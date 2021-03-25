<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}
		$this->load->model('catalog/information');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		$this->load->model('catalog/information');








   /*Best selling laptops*/
	 $data['best_selling'] = array();
	 $best_selling = $this->model_catalog_information->getBannerdetailscarousel(1);
	 $best_selling_product_ids = $best_selling[0]['product_ids'];
		$arrs = explode(',', $best_selling_product_ids);

		$this->load->model('catalog/product');
		foreach($arrs as $arr){

			$results = $this->model_catalog_product->getProduct($arr);

			if($results){

				 if ($results['image']) {
					 $image = $this->model_tool_image->resize($results['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 } else {
					 $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 }

				 	 if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				 		 $price = $this->currency->format($this->tax->calculate($results['price'], $results['tax_class_id'], $this->config->get('config_tax')));
				 	 } else {
				 		 $price = false;
				 	 }
			$data['best_selling'][] = array(
					 'product_id'  => $results['product_id'],
					  'thumb'       => $image,
					  'name'        => $results['name'],
					  'price'       => $price,
					  'href'        => $this->url->link('product/product', 'product_id=' . $results['product_id'])
				 );

			 }


		}


		/*Best corporate laptops*/




		$data['best_corporate'] = array();
		$best_corporate = $this->model_catalog_information->getBannerdetailscarousel(6);
 	 $best_selling_product_ids = $best_corporate[0]['product_ids'];
 		$arrs = explode(',', $best_selling_product_ids);

 		$this->load->model('catalog/product');
 		foreach($arrs as $arr){

 			$results = $this->model_catalog_product->getProduct($arr);

 			if($results){

 				 if ($results['image']) {
 					 $image = $this->model_tool_image->resize($results['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
 				 } else {
 					 $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
 				 }

 				 	 if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
 				 		 $price = $this->currency->format($this->tax->calculate($results['price'], $results['tax_class_id'], $this->config->get('config_tax')));
 				 	 } else {
 				 		 $price = false;
 				 	 }
 			$data['best_corporate'][] = array(
 					 'product_id'  => $results['product_id'],
 					  'thumb'       => $image,
 					  'name'        => $results['name'],
 					  'price'       => $price,
 					  'href'        => $this->url->link('product/product', 'product_id=' . $results['product_id'])
 				 );

 			 }


 		}


 		/*Best corporate laptops*/















		/*Best priced laptops*/




		$data['best_priced'] = array();
		$best_priced = $this->model_catalog_information->getBannerdetailscarousel(13);
	 $best_selling_product_ids = $best_priced[0]['product_ids'];
		$arrs = explode(',', $best_selling_product_ids);

		$this->load->model('catalog/product');
		foreach($arrs as $arr){

			$results = $this->model_catalog_product->getProduct($arr);

			if($results){

				 if ($results['image']) {
					 $image = $this->model_tool_image->resize($results['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 } else {
					 $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 }

					 if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						 $price = $this->currency->format($this->tax->calculate($results['price'], $results['tax_class_id'], $this->config->get('config_tax')));
					 } else {
						 $price = false;
					 }
			$data['best_priced'][] = array(
					 'product_id'  => $results['product_id'],
						'thumb'       => $image,
						'name'        => $results['name'],
						'price'       => $price,
						'href'        => $this->url->link('product/product', 'product_id=' . $results['product_id'])
				 );

			 }


		}


		/*Best priced laptops*/



   	$data['banner_1'] = $this->model_catalog_information->getBannerdetails(2);
		$data['banner_2'] = $this->model_catalog_information->getBannerdetails(3);
		$data['banner_3'] = $this->model_catalog_information->getBannerdetails(4);
		$data['banner_4'] = $this->model_catalog_information->getBannerdetails(5);
		$data['banner_5'] = $this->model_catalog_information->getBannerdetails(7);
		$data['banner_6'] = $this->model_catalog_information->getBannerdetails(8);
		$data['banner_7'] = $this->model_catalog_information->getBannerdetails(9);
		$data['banner_8'] = $this->model_catalog_information->getBannerdetails(10);
		$data['banner_9'] = $this->model_catalog_information->getBannerdetails(11);
		$data['banner_10'] = $this->model_catalog_information->getBannerdetails(12);


		/*Todays offer */




		$data['today_offer_1'] = array();
		$best_priced = $this->model_catalog_information->getOfferDetails(14);
	 $arrs = $best_priced[0]['product_id'];
	 $data['today_offer_points_1'] = $best_priced[0]['points'];
	//	$arrs = explode(',', $best_selling_product_ids);

		$this->load->model('catalog/product');
	//	foreach($arrs as $arr){

			$results = $this->model_catalog_product->getProduct($arrs	);

			if($results){

				 if ($results['image']) {
					 $image = $this->model_tool_image->resize($results['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 } else {
					 $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 }

					 if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						 $price = $this->currency->format($this->tax->calculate($results['price'], $results['tax_class_id'], $this->config->get('config_tax')));
					 } else {
						 $price = false;
					 }
			$data['today_offer_1'][] = array(
					 'product_id'  => $results['product_id'],
						'thumb'       => $image,
						'name'        => $results['name'],
						'price'       => $price,
						'href'        => $this->url->link('product/product', 'product_id=' . $results['product_id'])
				 );

			 }


	//	}




		/*Today Best offer 2 */

		$data['today_offer_2'] = array();
		$best_priced = $this->model_catalog_information->getOfferDetails(15);
	 $arrs = $best_priced[0]['product_id'];
	 $data['today_offer_points_2'] = $best_priced[0]['points'];
	//	$arrs = explode(',', $best_selling_product_ids);

		$this->load->model('catalog/product');
	//	foreach($arrs as $arr){

			$results = $this->model_catalog_product->getProduct($arrs	);

			if($results){

				 if ($results['image']) {
					 $image = $this->model_tool_image->resize($results['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 } else {
					 $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 }

					 if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						 $price = $this->currency->format($this->tax->calculate($results['price'], $results['tax_class_id'], $this->config->get('config_tax')));
					 } else {
						 $price = false;
					 }
			$data['today_offer_2'][] = array(
					 'product_id'  => $results['product_id'],
						'thumb'       => $image,
						'name'        => $results['name'],
						'price'       => $price,
						'href'        => $this->url->link('product/product', 'product_id=' . $results['product_id'])
				 );

			 }




		/*Today Best offer 3*/


		$data['today_offer_3'] = array();
		$best_priced = $this->model_catalog_information->getOfferDetails(16);
	 $arrs = $best_priced[0]['product_id'];
	 $data['today_offer_points_3'] = $best_priced[0]['points'];
	//	$arrs = explode(',', $best_selling_product_ids);

		$this->load->model('catalog/product');
	//	foreach($arrs as $arr){

			$results = $this->model_catalog_product->getProduct($arrs	);

			if($results){

				 if ($results['image']) {
					 $image = $this->model_tool_image->resize($results['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 } else {
					 $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				 }

					 if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						 $price = $this->currency->format($this->tax->calculate($results['price'], $results['tax_class_id'], $this->config->get('config_tax')));
					 } else {
						 $price = false;
					 }
			$data['today_offer_3'][] = array(
					 'product_id'  => $results['product_id'],
						'thumb'       => $image,
						'name'        => $results['name'],
						'price'       => $price,
						'href'        => $this->url->link('product/product', 'product_id=' . $results['product_id'])
				 );

			 }








		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}



	public function cron() {
    if(empty($this->request->get['key']) || $this->request->get['key'] != 'dkjfhkkfhskfjh3439793473kfjhfhfkjsdfh') die('ERROR');

		$this->load->model('catalog/information');

		$cart_items = $this->model_catalog_information->getcart();

		// var_dump($cart_items);

		if ($cart_items) {

			foreach ($cart_items as $cart_item) {
			$cart_id = $cart_item['cart_id'];
			$times_notified =	$cart_item['user_notified'];
			// $timeago = $this->model_catalog_information->timeAgo($cart_item['date_added']);
			$customer_details = $this->model_catalog_information->getDataOneColumn("customer","customer_id",$cart_item['customer_id']);

			if($times_notified < 2){

				if(count($customer_details)>0){

				$customer_details = $this->model_catalog_information->getDataOneColumn("customer","customer_id",$cart_item['customer_id']);

				$customer_phone = $customer_details[0]['telephone'];
				$message = "Hello, you left some items in your cart. Complete your purchase @ https://rentopc.com";
		  	$send = $this->model_catalog_information->sendtextmessage($customer_phone,$message);
				$this->model_catalog_information->updateData("cart","cart_id",$cart_id);
				}
			}
		}

		echo "done";
}


}





}
