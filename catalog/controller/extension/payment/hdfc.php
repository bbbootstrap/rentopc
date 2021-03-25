<?php
class ControllerExtensionPaymentHdfc extends Controller {
	public function index() {
		$this->load->language('extension/payment/hdfc');
		$this->load->model('checkout/order');
		
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
		$amount = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);

        $Code = array("AF" =>  "AFG", "AL" => "ALB", "DZ" => "DZA", "AS" => "ASM", "AD" => "AND", "AO" => "AGO", "AI" => "AIA", "AQ" => "ATA", "AG" => "ATG", "AR" => "ARG", "AM" => "ARM","AW" => "ABW", "AU" => "AUS", "AT" => "AUT", "AZ" => "AZE", "BS" => "BHS", "BH" => "BHR","BD" => "BGD", "BB" => "BRB", "BY" => "BLR", "BE" => "BEL", "BZ" => "BLZ", "BJ" => "BEN", "BM" => "BMU", "BT" => "BTN", "BO" => "BOL", "BA" => "BIH", "BW" => "BWA", "BV" => "BVT", "BR" => "BRA", "IO" => "IOT", "VG" => "VGB", "BN" => "BRN", "BG" => "BGR", "BF" => "BFA", "BI" => "BDI","KH" => "KHM", "CM" => "CMR", "CA" => "CAN", "CV" => "CPV", "KY" => "CYM", "CF" => "CAF", "TD" => "TCD", "CL" => "CHL", "CN" => "CHN", "CX" => "CXR", "CC" => "CCK", "CO" => "COL", "KM" => "COM", "CG" => "COG", "CK" => "COK", "CR" => "CRI", "CI" => "CIV", "HR" => "HRV", "CU" => "CUB", "CY" => "CYP", "CZ" => "CZE", "DK" => "DNK", "DM" => "DMA","DO" => "DOM", "TL" => "TLS", "EC" => "ECU", "EG" => "EGY", "SV" => "SLV", "GQ" => "GNQ","ER" => "ERI", "EE" => "EST", "ET" => "ETH", "FK" => "FLK","FO" => "FRO","FJ" => "FJI","FI" => "FIN","FR => FRA","FX" => "FXX","GF" => "GUF","PF" => "PYF","TF" => "ATF","GA" => "GAB","GE" => "GEO","GM" => "GMB","PS" => "PSE","DE" => "DEU","GH" => "GHA","GI" => "GIB","GR" => "GRC","GL" => "GRL","GD" => "GRD","GP" => "GLP","GU" => "GUM","GT" => "GTM","GN" => "GIN","GW" => "GNB","GY" => "GUY","HT" => "HTI","HM" => "HMD","HN" => "HND","HK" => "HKG","HU" => "HUN","IS" => "ISL","IN" => "IND","ID" => "IDN","IQ" => "IRQ","IE" => "IRL","IR" => "IRN","IL" => "ISR","IT" => "ITA","JM" => "JAM","JP" => "JPN","JO" => "JOR","KZ" => "KAZ","KE" => "KEN","KI" => "KIR","KP" => "PRK","KR" => "KOR","KW" => "KWT","KG" => "KGZ","LA" => "LAO","LV" => "LVA","LB" => "LBN","LS" => "LSO","LR" => "LBR","LY" => "LBY","LI" => "LIE","LT"=>"LTU","LU" => "LUX","MO" => "MAC","MK" => "MKD","MG" => "MDG","MW" => "MWI","MY" => "MYS","MV" => "MDV","ML" => "MLI","MT" => "MLT","MH" => "MHL","MQ" => "MTQ","MR" => "MRT","MU" => "MUS","YT" => "MYT","MX" => "MEX","FM" => "FSM","MD" => "MDA","MC" => "MCO","MN" => "MNG","MS" => "MSR","MA" => "MAR","MZ" => "MOZ","MM" => "MMR","NA" => "NAM","NR" => "NRU","NP" => "NPL","NL" => "NLD","NC" => "NCL","NZ" => "NZL","NI" => "NIC","NE" => "NER","NG" => "NGA","NU" => "NIU","NF" => "NFK","MP" => "MNP","NO" => "NOR","OM" => "OMN","PK" => "PAK","PW" => "PLW","PA" => "PAN","PG" => "PNG","PY" => "PRY","PE" => "PER","PH" => "PHL","PN" => "PCN","PL" => "POL","PT" => "PRT","PR" => "PRI","QA" => "QAT","RE" => "REU","RO" => "ROU","RU" => "RUS","RW" => "RWA","LC" => "LCA","WS" => "WSM","SM" => "SMR","ST" => "STP","SA" => "SAU","SN" => "SEN","SC" => "SYC","SL" => "SLE","SG" => "SGP","SK" => "SVK","SI" => "SVN","SB" => "SLB","SO" => "SOM","ZA" => "ZAF","ES" => "ESP","LK" => "LKA","SH" => "SHN","KN" => "KNA","PM" => "SPM","VC" => "VCT","SD" => "SDN","SR"=> "SUR","SJ" => "SJM","SZ" => "SWZ","SE" => "SWE","CH" => "CHE","SY" => "SYR","TW" => "TWN","TJ" => "TJK","TZ" => "TZA","TH" => "THA","TG" => "TGO","TK" => "TKL","TO" => "TON","TT" => "TTO","TN" => "TUN","TR" => "TUR","TM" => "TKM","TC" => "TCA","TV" => "TUV","UG" => "UGA","UA" => "UKR","AE" => "ARE","GB" => "GBR","US" => "USA","VI" => "VIR","UY" => "URY","UZ" => "UZB","VU" => "VUT","VA" => "VAT","VE" => "VEN","VN" => "VNM","WF" => "WLF","EH" => "ESH","YE" => "YEM","CS" => "SCG","ZR" => "ZAR","ZM" => "ZMB","ZW" => "ZWE","AP" => "   ","RS" => "SRB","AX" => "ALA" , "EU" => "" ,"ME" => "MNE","GG" => "GGY","JE" => "JEY","IM" => "IMN","CW" => "CUW","SX" => "SXM"); 

        $data['channel'] = '10';
		$data['account_id'] = $this->config->get('hdfc_account_id');
		//$data['page_id'] = $this->config->get('HDFC_page_id');
		$data['reference_no']= $this->session->data['order_id'];
		$data['amount'] = $amount;
		
		$data['description']	= $this->session->data['payment_method']['title'];		
		$data['currency'] = "INR";
		$data['name'] = $order_info['payment_firstname'].' '.$order_info['payment_lastname'];
		$data['address'] = $order_info['payment_address_1'].",".$order_info['payment_address_2'];
		$data['city'] = $order_info['payment_city'];
		$data['state'] = $order_info['payment_zone'];
		$data['postal_code']= $order_info['payment_postcode'];
		$data['country'] = $Code[$order_info['payment_iso_code_2']];		
		$data['email'] = $order_info['email'];
		$data['phone'] = $order_info['telephone'];
		//$data['return_url']=$this->url->link('extension/payment/hdfc/callback', '', true);
		
		$data['ship_name'] = $order_info['shipping_firstname'].' '.$order_info['shipping_lastname'];
		$data['ship_address']	= $order_info['shipping_address_1'].",".$order_info['shipping_address_2'];
		$data['ship_city'] = $order_info['shipping_city'];
		$data['ship_state'] = $order_info['shipping_zone'];
		$data['ship_postal_code'] = $order_info['shipping_postcode'];
		$data['ship_country'] = $Code[$order_info['shipping_iso_code_2']]; 
		$data['mode'] = ($this->config->get('hdfc_test') == "on") ? 'test' : 'live';
		$data['return_url'] = $this->url->link('extension/payment/hdfc/callback', '', 'SSL', true);
	//	$data['mode']='LIVE';

		$hashData = $this->config->get('hdfc_secret_key');
		$HASHING_METHOD = 'sha512';

		ksort($data);	
		
		foreach ($data as $key => $value){
			  if (strlen($value) > 0) {
			$hashData .= '|'.$value;
			}
		}
		

		if (strlen($hashData) > 0) {
			$secureHash = strtoupper(hash($HASHING_METHOD, $hashData));
			$data['secure_hash'] = $secureHash;
		}

					if($data['mode'] == "test"){
			$data['url'] = "https://secure.ebs.in/pg/ma/payment/request/";
		} else {
			$data['url'] = "https://secure.ebs.in/pg/ma/payment/request/";
		}
		
		


		$data['button_confirm'] = $this->language->get('button_confirm');

		$data['text_loading'] = $this->language->get('text_loading');

		$data['continue'] = $this->url->link('checkout/success');
	
		return $this->load->view('extension/payment/hdfc', $data);
	}


	public function callback(){

		$this->load->language('extension/payment/hdfc');
		$data['button_confirm'] = $this->language->get('button_confirm');
		$data['button_continue'] = $this->language->get('button_continue');
		$data['heading_title'] = $this->language->get('heading_title');
		$data['continue'] = $this->url->link('common/home');
		
		 // Your Secret Key
		if(isset($_POST)) {	
			$response = $_POST;
			
			$hashValue = $response['SecureHash'];
			
			unset($response['route']);
			$HASHING_METHOD = 'sha512';
			$params = $this->config->get('hdfc_secret_key');	
			ksort($response);
			foreach ($response as $key => $value){

				if (strlen($value) > 0 && $key != 'SecureHash') {
					$params .= '|'.$value;
				}
			}		
			if (strlen($params) > 0) {
				$secureHash = strtoupper(hash($HASHING_METHOD, $params));

			}		

			$hashValid = ($hashValue == $secureHash) ? true : false;
			
			$data['response'] = $response;	
			$data['message'] = $response['ResponseMessage'];		
			
			$this->load->model('checkout/order');
			if($response['ResponseCode']=='0' && $hashValid) {
				$this->model_checkout_order->addOrderHistory($response['MerchantRefNo'], '5');								
				if (isset($this->session->data['order_id'])) {
					
					$this->cart->clear();					
					unset($this->session->data['shipping_method']);
					unset($this->session->data['shipping_methods']);
					unset($this->session->data['payment_method']);
					unset($this->session->data['payment_methods']);
					unset($this->session->data['guest']);
					unset($this->session->data['comment']);
					unset($this->session->data['order_id']);
					unset($this->session->data['coupon']);
				}					

				
				$this->model_checkout_order->addOrderHistory($response['MerchantRefNo'],$this->config->get('hdfc_order_status_id'));	
                $data['orderId'] = $response['MerchantRefNo'];		
				$this->response->redirect($this->url->link('checkout/success', '', 'SSL',$data));
			}
			else {	

				$data['continue'] = $this->url->link('checkout/cart');
				 $data['orderId'] = $response['MerchantRefNo'];
				$data['title'] = sprintf($this->language->get('heading_title'), 'HDFC Payment Gateway'); 
				$this->model_checkout_order->addOrderHistory($response['MerchantRefNo'],'7');	
               										
				/*$data['text_response'] = $data['ResponseMessage'].". Try Again!!!";*/
				$data['text_failure'] = $this->language->get('text_failure');
				$data['text_failure_wait'] = sprintf($this->language->get('text_failure_wait'), $this->url->link('checkout/cart'));			
				
			
               if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/extension/payment/hdfc_failure.tpl')) {
						$this->template = $this->config->get('config_template') . '/template/extension/payment/hdfc_failure.tpl';
					} else {
						$this->template = 'extension/payment/hdfc_failure.tpl';
					}
					
					$this->children = array(
						'common/column_left',
						'common/column_right',
						'common/content_top',
						'common/content_bottom',
						'common/footer',
						'common/header'
					);
		
					$this->response->setOutput($this->load->view($this->template,$data));
			}		
		}
	


	}


	
}
