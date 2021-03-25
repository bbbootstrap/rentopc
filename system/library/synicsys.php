<?php




class Synicsys{


	//protected $url = "http://alerts.synicsys.com/api/web2sms.php";

	// public function notifyAdmin($message,$api_key,$sender_id,$api_url)
	// {
     
         
		      
	// 	for ($i = 1;$i <= 4;$i ++) {
 //            $name = 'synicsys_admin'.$i;
 //            $to = $this->config->get($name);
 //            $sms->send($to,$message,$api_key,$sender_id,$api_url);
 //        }   
	// }

	// public function notifyUser($mob_num, $msg)
	// {
	// 	$msg = "Dear"
	// }

	public function send($mob_num,$msg,$api_key,$sender_id,$api_url)
	{	
		$authKey = $api_key;
		//Multiple mobiles numbers separated by comma
		$mobileNumber = '91'.$mob_num;
		//Sender ID,While using route4 sender id should be 6 characters long.
		$senderId = $sender_id;
		//Your message to send, Add URL encoding here.
		$message = $msg;
		//Define route 
		$route = "default";
		//Prepare you post parameters
		// $postData = array(
		// 		'authkey' => $authKey,
		// 		'mobiles' => $mobileNumber,
		// 		'message' => $message,
		// 		'sender' => $senderId,
		// 		'route' => $route
		// );
	// 	//API URL
	// 	$url="http://api.msg91.com/api/sendhttp.php";
	// 	// init the resource
	// 	$ch = curl_init();
	// 	curl_setopt_array($ch, array(
	// 			CURLOPT_URL => $url,
	// 			CURLOPT_RETURNTRANSFER => true,
	// 			CURLOPT_POST => true,
	// 			CURLOPT_POSTFIELDS => $postData
	// 			//,CURLOPT_FOLLOWLOCATION => true
	// 	));
		
	// 	//Ignore SSL certificate verification
	// 	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
	// 	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
		
	// 	//get response
	// 	$output = curl_exec($ch);
	// 	//Print error if any
	// 	if(curl_errno($ch))
	// 	{
	// //			echo 'error:' . curl_error($ch);
	// 	}
	// 	curl_close($ch);
	// 	//echo $output;



	$curl = curl_init();

	curl_setopt_array($curl, array(
		CURLOPT_URL => "http://api.msg91.com/api/sendhttp.php?route=4&sender=$senderId&mobiles=$mobileNumber&authkey=$authKey&message=$message&country=91",
		CURLOPT_RETURNTRANSFER => true,
		CURLOPT_ENCODING => "",
		CURLOPT_MAXREDIRS => 10,
		CURLOPT_TIMEOUT => 30,
		CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		CURLOPT_CUSTOMREQUEST => "GET",
		CURLOPT_SSL_VERIFYHOST => 0,
		CURLOPT_SSL_VERIFYPEER => 0,
	));
	
	$response = curl_exec($curl);
	$err = curl_error($curl);
	
	curl_close($curl);
	
	// if ($err) {
	// 	echo "cURL Error #:" . $err;
	// } else {
	// 	echo $response;
	// }




















	    
		// if ($mob_num) {	
		// 	$curl = curl_init();

		// 	curl_setopt_array($curl, array(
		// 	  CURLOPT_URL => "$api_url",
		// 	  CURLOPT_RETURNTRANSFER => true,
		// 	  CURLOPT_ENCODING => "",
		// 	  CURLOPT_MAXREDIRS => 10,
		// 	  CURLOPT_TIMEOUT => 30,
		// 	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		// 	  CURLOPT_CUSTOMREQUEST => "POST",
		// 	  CURLOPT_POSTFIELDS => "<MESSAGE> <AUTHKEY>$api_key</AUTHKEY> <SENDER>$sender_id</SENDER> <ROUTE>Template</ROUTE> <CAMPAIGN>XML API</CAMPAIGN> <COUNTRY>91</COUNTRY> <SMS TEXT=\"$msg\" > <ADDRESS TO=\"$mob_num\"></ADDRESS> <ADDRESS TO=\"number2\"></ADDRESS> </SMS> <SMS TEXT=\"hi test message\" > <ADDRESS TO=\"number3\"></ADDRESS> </SMS> </MESSAGE>",
		// 	  CURLOPT_SSL_VERIFYHOST => 0,
		// 	  CURLOPT_SSL_VERIFYPEER => 0,
		// 	  CURLOPT_HTTPHEADER => array(
		// 	    "content-type: application/xml"
		// 	  ),
		// 	));

		// 	$response = curl_exec($curl);
		// 	$err = curl_error($curl);

		// 	curl_close($curl);

		// 	if ($err) {
		// 	  echo "cURL Error #:" . $err;
		// 	} else {
		// 	  echo $response;
		// 	}

		// }

			
	}

 public function generateOtp() {
       return rand(1000, 9000);
   }


   public function sendotp($mobile_number, $senderId,$api_key){

		$otp = $this->generateOtp();
		
		$contactNumber= '91'.$mobile_number.'';

    $msg = $this->messageTemplate($otp);

    $curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://control.msg91.com/api/sendotp.php?otp_length=4&authkey=$api_key&message=$msg&sender=$senderId&mobile=$contactNumber&otp=$otp&otp_expiry=10",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "",
  CURLOPT_SSL_VERIFYHOST => 0,
  CURLOPT_SSL_VERIFYPEER => 0,
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

return $response;

// if ($err) {
//   echo "cURL Error #:" . $err;
// } else {
//   echo $response;
// }

   }

   public function messageTemplate($otp){

   	 return  'your OTP is '.$otp.'. Donot share it with anyone';


    }


   public function retry($contactNumber,$auth_key) {
	
    $mobile_number= '91'.$contactNumber.'';
		$curl = curl_init();
		
		curl_setopt_array($curl, array(
			CURLOPT_URL => "http://control.msg91.com/api/retryotp.php?authkey=$auth_key&mobile=$mobile_number&retrytype=text",
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_ENCODING => "",
			CURLOPT_MAXREDIRS => 10,
			CURLOPT_TIMEOUT => 30,
			CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			CURLOPT_CUSTOMREQUEST => "POST",
			CURLOPT_POSTFIELDS => "",
			CURLOPT_SSL_VERIFYHOST => 0,
			CURLOPT_SSL_VERIFYPEER => 0,
			CURLOPT_HTTPHEADER => array(
				"content-type: application/x-www-form-urlencoded"
			),
		));
		
		$response = curl_exec($curl);
		$err = curl_error($curl);
		
		curl_close($curl);


		return $response;
		
		// if ($err) {
		// 	echo "cURL Error #:" . $err;
		// } else {
		// 	echo $response;
		// }
   }
   

   public function verify($contactNumber, $otp,$api_key) {


		$mobile_number= '91'.$contactNumber.'';
		     $curl = curl_init();

		curl_setopt_array($curl, array(
		  CURLOPT_URL => "https://control.msg91.com/api/verifyRequestOTP.php?authkey=$api_key&mobile=$mobile_number&otp=$otp",
		  CURLOPT_RETURNTRANSFER => true,
		  CURLOPT_ENCODING => "",
		  CURLOPT_MAXREDIRS => 10,
		  CURLOPT_TIMEOUT => 30,
		  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		  CURLOPT_CUSTOMREQUEST => "POST",
		  CURLOPT_POSTFIELDS => "",
		  CURLOPT_SSL_VERIFYHOST => 0,
		  CURLOPT_SSL_VERIFYPEER => 0,
		  CURLOPT_HTTPHEADER => array(
		    "content-type: application/x-www-form-urlencoded"
		  ),
		));

		$response = curl_exec($curl);
		$err = curl_error($curl);

		curl_close($curl);

		// if ($err) {
		//   echo "cURL Error #:" . $err;
		// } else {
		//   echo $response;
		// }

    return $response;

   }

  
   

    
   public function call($action, $args)
    {
        $callback = [];
        $httpInstance = new HttpInstance(static::actionUrlBuild($action));
        $httpInstance->setParameters($args);
        try {
            $response = json_decode($httpInstance->getResponse(), true);
            if ($httpInstance->getLastHttpCode() != 200) {
                $callback = $response;
                return $callback;
            } else {
                if(isset($response['payload'])){
                  $callback = $response['payload'];
                }
                else {
                  $callback = $response;
                }
                return $callback;
            }
        } catch (\RuntimeException $ex) {
            $callback = sprintf('Http error %s with code %d', $ex->getMessage(), $ex->getCode());
            return $callback;
        }
    } 





}