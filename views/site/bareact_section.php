<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\models\BareactDetl;

$this->title = 'Bareact Sections';

?>
 <br><br>

	<div class="panel panel-default">
		<?php foreach($models as $model) { 
              $doc_id = $model['doc_id'];
			?>
		<!-- <div class="panel-body"> -->
			<p class="groove"><a href="/site/bareact-completion?doc_code=<?php echo $doc_id?>"><?php echo $model['act_title'];?></a></p>
		<!-- </div> -->
	<?php } ?>
	</div>

