<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\models\BareactSubcatgMast;

$this->title = 'Bareact SubCategories';

?>


        <a href="index.php?r=site/bareact-list" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-arrow-left"></span> Back
        </a>
        <br><br>

	<div class="row">
		<?php foreach($models as $model) { 
              $sub_code = $model['act_sub_catg_code'];
			?>
		<div class="col-sm-6">
			<p class="groove"><a href="/site/bareact?sub_code=<?php echo $sub_code?>"><?php echo $model['act_sub_catg_desc'];?></a></p>
		</div>
	<?php } ?>
	</div>

