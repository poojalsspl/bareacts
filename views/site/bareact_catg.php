<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\models\BareactCatgMast;

$this->title = 'Bareact Categories';

?>
<h2>Bareact Categories</h2>
	<section class="section">
  <div class="container">
    <div class="row">

    	<?php foreach($models as $model) { 
              $act_catg = $model['act_catg_code'];
			?>
      <div class="col-lg-4">
        
        
        <h3 class="font-weight-light"><span class="font-weight-bold"></span></h3>
        
        <p><a href="/site/bareact-subcatg?cat_code=<?php echo $act_catg?>"><?php echo $model['act_catg_desc'];?></a></p>
       
       
      </div>
       <?php } ?>
    </div>
  </div>
</section>
