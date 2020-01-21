<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\ContactForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;

$this->title = 'Contact';
$this->params['breadcrumbs'][] = $this->title;
?>
<section class="section">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h2 class="mb-4">Contact Us</h2>
        <img src="/theme/images_bareact/contact.jpg" alt="author" class="img-fluid w-100 mb-4">
        <?php if (Yii::$app->session->hasFlash('contactFormSubmitted')): ?>
            <div class="alert alert-success">
            Thank you for contacting us. We will respond to you as soon as possible.
            </div>
            <p>
                
            </p>
            <?php else: ?>
        <p class="mb-5"> 
            If you have any inquiries or other questions, please fill out the following form to contact us.
            Thank you.
       
        </p>
        <form action="#" class="row">
            <?php $form = ActiveForm::begin(['id' => 'contact-form']); ?>
          <div class="col-lg-6">
           <?= $form->field($model, 'name')->textInput(['autofocus' => true]) ?>
          </div>
          <div class="col-lg-6">
            <?= $form->field($model, 'email') ?>
          </div>
          <div class="col-12">
            <?= $form->field($model, 'subject') ?>
          </div>
          <div class="col-12">
            <?= $form->field($model, 'body')->textarea(['rows' => 6]) ?>
          </div>  
          <div class="col-12">
           
             <?= Html::submitButton('Submit', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
          </div>
           <?php ActiveForm::end(); ?>
        </form>
         <?php endif; ?>
      </div>
    </div>
  </div>
</section>



