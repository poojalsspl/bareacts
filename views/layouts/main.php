<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;

use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
$directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/theme');

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
 <?= $this->render(
        'header.php',
        ['directoryAsset' => $directoryAsset]
    ) ?>


    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

    <?= $this->render(
        'footer.php',
        ['directoryAsset' => $directoryAsset]
    ) ?>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
