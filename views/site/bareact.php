<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\models\BareactMast;

$this->title = 'Bareact';


?>

 <!-- <a href="index.php?r=site/bareact-subcatg&cat_code=21" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-arrow-left"></span> Back
        </a> -->
        <br><br>

	<div class="panel panel-default">
		<?php foreach($models as $model) { 
              $br_code = $model['bareact_code'];
			?>
		<!-- <div class="panel-body"> -->
			<p class="groove"><a href="/site/bareact-sections?br_code=<?php echo $br_code?>"><?php echo $model['bareact_desc'];?></a></p>
		<!-- </div> -->
	<?php } ?>
	</div>

