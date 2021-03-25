<!--
Payment Name    : CCAvenue MCPG
Description		  : Extends Payment with  CCAvenue MCPG.
CCAvenue Version  : MCPG-2.0
Module Version    : bz-3.0
Author			  : BlueZeal SoftNet 
Copyright         : © 2014-2015
-->

<?php echo $api_resonse; ?>

<form action="<?php echo $action; ?>" method="post">
        <input type="hidden" name="encRequest" value="<?php echo $encrypted_data; ?>">
        <input type="hidden" name="access_code" value="<?php echo $access_code; ?>">
        
        
  
  <div class="buttons">
    <div class="pull-right">
      <input type="submit" value="<?php echo $button_confirm; ?>" class="btn btn-primary" />
    </div>
  </div>
</form>





<!-- <?php echo $api_resonse; ?>

<div class="buttons">
  <div class="pull-right"> 
	<a id="button-confirm" class="button btn btn-primary" onclick="$('#ccavenuepay_standard_checkout').submit();">
			<span><?php echo $button_confirm; ?></span>
		</a>
  </div>
</div> -->
 
 