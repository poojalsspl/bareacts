<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\models\BareactCatgMast;

$this->title = 'Bareact Categories';

?>

	<div class="panel panel-default">
		<?php foreach($models as $model) { 
              $act_catg = $model['act_catg_code'];
			?>
		<!-- <div class="panel-body"> -->
			<p class="groove"><a href="/site/bareact-subcatg?cat_code=<?php echo $act_catg?>"><?php echo $model['act_catg_desc'];?></a></p>
		<!-- </div> -->
	<?php } ?>
	</div>
