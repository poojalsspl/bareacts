<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\models\BareactMast;

$this->title = 'Bareact';


?>

<section class="section">
  <div class="container">
    <div class="row">

    	<?php foreach($models as $model) { 
              $br_code = $model['bareact_code'];
			?>
      <div class="col-lg-12">
            <h3 class="font-weight-light"><span class="font-weight-bold"></span></h3>
            <p><br><a href="/site/bareact-sections?br_code=<?php echo $br_code?>"><?php echo $model['bareact_desc'];?></a></p>
      </div>
       <?php } ?>
    </div>
  </div>
</section><br><br><br><br>

