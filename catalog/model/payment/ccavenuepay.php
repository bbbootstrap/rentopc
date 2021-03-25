<?php 
/*Payment Name    : CCAvenue MCPG
Description		  : Extends Payment with  CCAvenue MCPG.
Opencart version  : 2.0.1.1
CCAvenue Version  : MCPG-2.0
Module Version    : bz-3.0
Author			  : BlueZeal SoftNet 
Copyright         : © 2014-2015 */

class ModelPaymentCcavenuepay extends Model {
  	public function getMethod($address, $total) {
		$this->load->language('payment/ccavenuepay');		
		 
      		$method_data = array( 
        		'code'       => 'ccavenuepay',
				'title'      => $this->language->get('text_title'),	
				'sort_order' => $this->config->get('ccavenuepay_sort_order')
      		);
    	 
    	return $method_data;
  	}
}
?>