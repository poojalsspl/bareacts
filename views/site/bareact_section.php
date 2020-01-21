<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\models\BareactDetl;

$this->title = 'Bareact Sections';

?>


<section class="section">
  <div class="container">
    <div class="row">

    	<?php foreach($models as $model) { 
               $doc_id = $model['doc_id'];
			?>
      <div class="col-lg-12">
            <h3 class="font-weight-light"><span class="font-weight-bold"></span></h3>
            <p><br><a href="/site/bareact-completion?doc_code=<?php echo $doc_id?>"><?php echo $model['act_title'];?></a></p>
      </div>
       <?php } ?>
    </div>
  </div>
</section><br><br><br><br>

