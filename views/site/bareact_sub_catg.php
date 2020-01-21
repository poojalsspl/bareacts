<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\models\BareactSubcatgMast;

$this->title = 'Bareact SubCategories';

?>


      <!--   <a href="/site/bareact-list" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-arrow-left"></span> Back
        </a>
        <br><br> -->



<section class="section">
  <div class="container">
    <div class="row">

    	<?php foreach($models as $model) { 
              $sub_code = $model['act_sub_catg_code'];
			?>
      <div class="col-lg-4">
            <h3 class="font-weight-light"><span class="font-weight-bold"></span></h3>
            <p class="groove"><br><a href="/site/bareact?sub_code=<?php echo $sub_code?>"><?php echo $model['act_sub_catg_desc'];?></a></p>
      </div>
       <?php } ?>
    </div>
  </div>
</section><br><br><br><br>

