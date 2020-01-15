<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\BareactCatgMast;
use app\models\BareactSubcatgMast;
use app\models\BareactMast;
use app\models\BareactDetl;

class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Login action.
     *
     * @return Response|string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }

        $model->password = '';
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return Response
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return Response|string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    public function actionBareactList()
    {
        $brcatgmast = new BareactCatgMast();
        $catg_list = $brcatgmast->getCatglist();
        return $this->render('bareact_catg', [
            'models' => $catg_list,
            ]); 
    }

    public function actionBareactSubcatg($cat_code)
    {
       $barSubCatg = new BareactSubcatgMast();
       $barsubCode = $barSubCatg->getbareactCode($cat_code);
       return $this->render('bareact_sub_catg', [
          'models' => $barsubCode,
       ]);
    }

    public function actionBareact($sub_code)
    {
        $query = BareactMast::find()->where(['act_sub_catg_code' => $sub_code])->orderBy('bareact_desc')->all();
        return $this->render('bareact', [
          'models' => $query,
       ]);

    }

    public function actionBareactSections($br_code)
    {
        $section = BareactDetl::find()->select(['doc_id','act_title'])->where(['bareact_code'=>$br_code])->orderBy('sno,level')->all();
        return $this->render('bareact_section',[
         'models' => $section,
        ]);
    }

    public function actionBareactCompletion($doc_code)
    {
        $barDetl = new BareactDetl();
        $barBody = $barDetl->getbareactBody($doc_code);
        return $this->render('bareact_completion',[
         'models' => $barBody,
        ]);
    }



}
