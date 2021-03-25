<?php
class ModelCatalogInformation extends Model {
	public function getInformation($information_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "information i LEFT JOIN " . DB_PREFIX . "information_description id ON (i.information_id = id.information_id) LEFT JOIN " . DB_PREFIX . "information_to_store i2s ON (i.information_id = i2s.information_id) WHERE i.information_id = '" . (int)$information_id . "' AND id.language_id = '" . (int)$this->config->get('config_language_id') . "' AND i2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND i.status = '1'");

		return $query->row;
	}

	public function getInformations() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "information i LEFT JOIN " . DB_PREFIX . "information_description id ON (i.information_id = id.information_id) LEFT JOIN " . DB_PREFIX . "information_to_store i2s ON (i.information_id = i2s.information_id) WHERE id.language_id = '" . (int)$this->config->get('config_language_id') . "' AND i2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND i.status = '1' ORDER BY i.sort_order, LCASE(id.title) ASC");

		return $query->rows;
	}

	public function getInformationLayoutId($information_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "information_to_layout WHERE information_id = '" . (int)$information_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return 0;
		}
	}



	public function getBannerdetails($banner_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "home_configuration_banner WHERE banner_id = '" . (int)$banner_id . "'");

		return $query->rows;


	}

	public function getBannerdetailscarousel($banner_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "home_configuration_carousel WHERE home_carousel_id = '" . (int)$banner_id . "'");

		return $query->rows;


	}



	public function getOfferDetails($banner_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "home_configuration_offers WHERE home_offer_id = '" . (int)$banner_id . "'");

		return $query->rows;


	}

  public function getcart(){

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "cart");

		return $query->rows;

	}



	public function getDataOneColumn($table,$column,$value){

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . $table." WHERE $column = '" . $value . "'");

		return $query->rows;

	}


	public function updateData($table, $column, $value)
	 {
		 $query = $this->db->query("UPDATE " . DB_PREFIX . $table." SET user_notified= user_notified + 1 WHERE $column = '" . $value . "'");

			return true;
	 }


	function timeAgo($timestamp){
    $datetime1=new DateTime("now");
    $datetime2=date_create($timestamp);
    $diff=date_diff($datetime1, $datetime2);
    $timemsg='';
    if($diff->y > 0){
        $timemsg = $diff->y .' year'. ($diff->y > 1?"'s":'');

    }
    else if($diff->m > 0){
     $timemsg = $diff->m . ' month'. ($diff->m > 1?"'s":'');
    }
    else if($diff->d > 0){
     $timemsg = $diff->d .' day'. ($diff->d > 1?"'s":'');
    }
    else if($diff->h > 0){
     $timemsg = $diff->h .' hour'.($diff->h > 1 ? "'s":'');
    }
    else if($diff->i > 0){
     $timemsg = $diff->i .' minute'. ($diff->i > 1?"'s":'');
    }
    else if($diff->s > 0){
     $timemsg = $diff->s .' second'. ($diff->s > 1?"'s":'');
    }

$timemsg = $timemsg.' ago';
return $timemsg;
}



     public function sendtextmessage($phone,$text_message){


			 if ($this->config->get('synicsys_status') == "1") {
					 $sms = new Synicsys();
					// $url = "rentopc.com";
					 $api_key = $this->config->get('synicsys_working_key');
           $sender_id = $this->config->get('synicsys_sender_id');
           $api_url = $this->config->get('synicsys_website_url');
					 $hello ="";
					 $message = $text_message;

					 // if ($url) {
						// 	 $message .= " Thanks for shopping with ".$url."";
					 // }

					 if (isset($phone)) {
							 $to = $phone;
							 $sms -> send($to,$message,$api_key,$sender_id,$api_url);
					 }

			 }


		 }



}
