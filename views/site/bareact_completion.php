<style type="text/css">
	h3{
		text-align: center;
		background-color: #edf6fd !important;
	}
	.row p{
		text-align: justify;
	}
	
</style>
<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\models\BareactDetl;

$this->title = 'Bareact Sections';

?>
<h3><?php echo $models['act_title']; ?></h3>
 <br><br><hr>
 <div class="container">
 	<div class="row">
        <p><input type="hidden" id="br-code" value="<?php echo $models['bareact_code'];?>"></p>
		<p><?php echo $models['body'];?></p>
		<?php 
        $level = $models['level'];
		if ($level!=0) {?>
		<div class="act_row"></div>
		<button id="completebar-body">Complete Act</button>
		<?php } ?>
	</div>	
</div>		


<?php $customScript = <<< SCRIPT
$('#completebar-body').on('click', function(){
	$('#completebar-body').hide();
    var bareact_code = $('#br-code').val();
    $.ajax({
    	url        : '/site/bareact-final?id='+bareact_code,
        dataType   : 'json',
        success    : function(data){
        	$('.act_row').append(data.body);

        }
    	});
    	
    }); 
SCRIPT;
$this->registerJs($customScript, \yii\web\View::POS_READY);?>


	
