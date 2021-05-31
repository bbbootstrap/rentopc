<?php
class ControllerAccountRegisterredeem extends Controller {
	private $error = array();

	public function index() {
		$verify ="";
		if ($this->customer->isLogged()) {
			$this->response->redirect($this->url->link('account/account', '', 'SSL'));
			//$cust = "Logged in ";
		}

		$this->load->language('account/register');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

		$this->load->model('account/customer');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$customer_id = $this->model_account_customer->addCustomer($this->request->post);
           // $this->session->set_flashdata('alert_msg', array('failure', 'No Login', $customer_id));
			// Clear any previous login attempts for unregistered accounts.
			//$cust =$customer_id;
			$this->model_account_customer->deleteLoginAttempts($this->request->post['email']);

			//$this->customer->login($this->request->post['email'], $this->request->post['password']);

			unset($this->session->data['guest']);

			// Add to activity log
			$this->load->model('account/activity');

			$activity_data = array(
				'customer_id' => $customer_id,
				'name'        => $this->request->post['firstname'] . ' ' . $this->request->post['lastname']
			);

			$this->model_account_activity->addActivity('register', $activity_data);


			 $verify="success";

			//$this->response->redirect($this->url->link('account/success'));
		} else{

			$verify="error";

		}


		// if (isset($this->request->post['email'])) {
		// 	$data['email'] = $this->request->post['email'];
		// } else {
		// 	$data['email'] = '';
		// }

		// if (isset($this->request->post['telephone'])) {
		// 	$data['telephone'] = $this->request->post['telephone'];
		// } else {
		// 	$data['telephone'] = '';
		// }


		// if (isset($this->request->post['password'])) {
		// 	$data['password'] = $this->request->post['password'];
		// } else {
		// 	$data['password'] = '';
		// }

		// // if (isset($this->request->post['confirm'])) {
		// // 	$data['confirm'] = $this->request->post['confirm'];
		// // } else {
		// // 	$data['confirm'] = '';
		// // }


		echo $verify;
	}

	private function validate() {

			//$this->session->set_flashdata('alert_msg', array('failure', 'No register', $this->language->get('error_email')));

		if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $this->request->post['email'])) {
			$this->error['email'] = $this->language->get('error_email');
}

		if ($this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
			$this->error['warning'] = $this->language->get('error_exists');

		}

		if ($this->model_account_customer->getTotalCustomersByPhone($this->request->post['telephone'])) {
			$this->error['warning'] = $this->language->get('error_exists');
		}



		if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32)) {
			$this->error['telephone'] = $this->language->get('error_telephone');
	}



		if ((utf8_strlen($this->request->post['password']) < 4) || (utf8_strlen($this->request->post['password']) > 20)) {
			$this->error['password'] = $this->language->get('error_password');
		}



		return !$this->error;
	}


    public function verify_register_otp(){

    	$verify="";

    	$otp = $_POST['otp'];
		$mob_num = $_POST['telephone'];
		$password = $_POST['password'];
		$email = $_POST['email'];

    	$api_key= $this->config->get('synicsys_working_key');
		$sender_id= $this->config->get('synicsys_sender_id');
		//$mob_num= $this->config->get('synicsys_admin1');

        $sms = new Synicsys();
       $response = $sms->verify($mob_num,$otp,$api_key);
	   $json = json_decode($response, true);
       if($json['type'] =='success'){

       	$mar = $this->customer->verify_register_otp($mob_num);

	    if($mar['status']==1){
			$this->customer->login($email,$password);
			unset($this->session->data['guest']);
			$verify ="success";

		}else {

			$verify ="error";
		}

       } else{

       	$verify ="error";
       }

       echo $verify;

	}




	public function verify_login_via_otp(){

    	$verify="";

    	$otp = $_POST['otp'];
		$mob_num = $_POST['telephone'];
		//$password = $_POST['password'];
		//$email = $_POST['email'];

    	$api_key= $this->config->get('synicsys_working_key');
		$sender_id= $this->config->get('synicsys_sender_id');
		//$mob_num= $this->config->get('synicsys_admin1');
		$sha1_password = $this->get_customer_info($mob_num);

        $sms = new Synicsys();
       $response = $sms->verify($mob_num,$otp,$api_key);
	   $json = json_decode($response, true);
       if($json['type'] =='success'){
        $this->customer->verify_register_otp($mob_num);
		$this->customer->login_otp($mob_num);
		unset($this->session->data['guest']);

		$verify ="success";

       } else{

       	$verify ="error";
       }

       echo $verify;

	}


	public function get_customer_info($phone){

	$info = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE telephone = '" . $phone . "'");
	return $info->row['password'];


	}







	public function resend_otp(){

    	$verify="";

    	//$otp = $_POST['otp'];
    	$mob_num = $_POST['phone'];

    	$api_key= $this->config->get('synicsys_working_key');
		$sender_id= $this->config->get('synicsys_sender_id');
		//$mob_num= $this->config->get('synicsys_admin1');

       $sms = new Synicsys();
       $response = $sms->retry($mob_num,$api_key);
       $json = json_decode($response, true);

       if($json['type'] =='success'){

		$verify ="success";

       } else{

       	$verify ="error";
       }

       echo $verify;


	}


	public function reset_password(){

		$verify="";

		//$email = $_POST['email'];
		$phone = $_POST['phone'];
		//$phone = "hitesh.chauhan10@outlook.com";

		//$password = substr(sha1(uniqid(mt_rand(100000,999999), true)), 0, 10);
		$password = substr(sha1(uniqid(mt_rand(100000,999999), true)), 0, 10);


		$check_mobile = $this->customer->check_registered_phone($phone);
		if ($check_mobile>0) {

			$check = $this->customer->edit_Password_Using_Phone($phone,$password);

			//$verify=$check;

			$api_key= $this->config->get('synicsys_working_key');
			$sender_id= $this->config->get('synicsys_sender_id');
			//$mob_num= $this->config->get('synicsys_admin1');
			$api_url= $this->config->get('synicsys_website_url');

		   $sms = new Synicsys();
		   $message = "Hello,we have reset your password, your password is - ".$password." Now login with your phone number. Regards,rentopc.com";
		   $response = $sms->send($phone,$message,$api_key,$sender_id,$api_url);

		   $verify ="success";

		} else {

			$verify ="error";


		}


		echo $verify;


	   }


	public function check_account(){
		$verify="";

		$mob_num = $_POST['phone'];


		$check_mobile = $this->customer->check_registered_phone($mob_num);
		if ($check_mobile>0) {


			$api_key= $this->config->get('synicsys_working_key');
			$sender_id= $this->config->get('synicsys_sender_id');
			$api_url= $this->config->get('synicsys_website_url');
			//$mob_num= $this->config->get('synicsys_admin1');
			//$mob_num= $data['telephone'];
			$sms = new Synicsys();
			$response=$sms->sendotp($mob_num,$sender_id,$api_key);
			$json = json_decode($response, true);

			if($json['type'] =='success'){

				$verify ="success";

			   } else{

				   $verify ="error";
			   }

		} else {

			$verify ="error";
		}


		echo $verify;

	}

}
