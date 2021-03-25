<?php
class ModelPaymentHdfc extends Model {
	public function getMethod($address, $total) {
		//$this->load->language('extension/payment/hdfc');
		$this->language->load('extension/payment/hdfc');

		

		
			$method_data = array(
				'code'       => 'hdfc',
				'title'      => $this->language->get('text_title'),
				'terms'      => '',
				'sort_order' => $this->config->get('hdfc_sort_order')
			);
		

		return $method_data;
	}
}
