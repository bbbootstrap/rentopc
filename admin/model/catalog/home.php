<?php
class ModelCatalogHome extends Model {
	public function addCategory($data) {
		//$this->event->trigger('pre.admin.category.add', $data);

		// $this->db->query("INSERT INTO " . DB_PREFIX . "category SET parent_id = '" . (int)$data['parent_id'] . "', `top` = '" . (isset($data['top']) ? (int)$data['top'] : 0) . "', `column` = '" . (int)$data['column'] . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', date_modified = NOW(), date_added = NOW()");
		//
		// $category_id = $this->db->getLastId();

		if (isset($data['banner_image_url'])) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "home_configuration_banner SET image_url = '" . $data['banner_image_url'] . "'");
		}

		// MySQL Hierarchical Data Closure Table Pattern
		// $level = 0;
		//
		// $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$data['parent_id'] . "' ORDER BY `level` ASC");
		//
		// foreach ($query->rows as $result) {
		// 	$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET `category_id` = '" . (int)$category_id . "', `path_id` = '" . (int)$result['path_id'] . "', `level` = '" . (int)$level . "'");
		//
		// 	$level++;
		// }
		//
		// $this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET `category_id` = '" . (int)$category_id . "', `path_id` = '" . (int)$category_id . "', `level` = '" . (int)$level . "'");
		//
		// if (isset($data['category_filter'])) {
		// 	foreach ($data['category_filter'] as $filter_id) {
		// 		$this->db->query("INSERT INTO " . DB_PREFIX . "category_filter SET category_id = '" . (int)$category_id . "', filter_id = '" . (int)$filter_id . "'");
		// 	}
		// }
		//
		// if (isset($data['category_store'])) {
		// 	foreach ($data['category_store'] as $store_id) {
		// 		$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_store SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "'");
		// 	}
		// }
		//
		// // Set which layout to use with this category
		// if (isset($data['category_layout'])) {
		// 	foreach ($data['category_layout'] as $store_id => $layout_id) {
		// 		$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_layout SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "', layout_id = '" . (int)$layout_id . "'");
		// 	}
		// }
		//
		// if (isset($data['keyword'])) {
		// 	$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'category_id=" . (int)$category_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		// }
		//
		// $this->cache->delete('category');
		//
		// $this->event->trigger('post.admin.category.add', $category_id);

	//	return $category_id;
	}

	public function editCategory($category_id, $data) {


		if (isset($data['banner_image_url'])) {
		//	$this->db->query("INSERT INTO " . DB_PREFIX . "home_configuration_banner SET image_url = '" . $data['banner_image_url'] . "'WHERE category_id = '" . (int)$category_id . "'");
			$this->db->query("UPDATE " . DB_PREFIX . "home_configuration_banner SET image_url = '" . $data['banner_image_url']   . "',`banner_url` = '" . $data['banner_url']. "' WHERE banner_id = '" . (int)$category_id . "'");
		}
 }


 public function editCategoryoffers($category_id, $data) {


	 if (isset($data['offer_product_id'])) {
	 //	$this->db->query("INSERT INTO " . DB_PREFIX . "home_configuration_banner SET image_url = '" . $data['banner_image_url'] . "'WHERE category_id = '" . (int)$category_id . "'");
		 $this->db->query("UPDATE " . DB_PREFIX . "home_configuration_offers SET product_id = '" . $data['offer_product_id']   . "',`points` = '" . $data['offer_reward_points']. "' WHERE home_offer_id = '" . (int)$category_id . "'");
	 }
}



		public function editCategory_carousel($category_id, $data) {


			if (isset($data['product_ids'])) {
			//	$this->db->query("INSERT INTO " . DB_PREFIX . "home_configuration_banner SET image_url = '" . $data['banner_image_url'] . "'WHERE category_id = '" . (int)$category_id . "'");
				$this->db->query("UPDATE " . DB_PREFIX . "home_configuration_carousel SET product_ids = '" . $data['product_ids']   . "' WHERE home_carousel_id = '" . (int)$category_id . "'");
			}

		// $this->event->trigger('pre.admin.category.edit', $data);
		//
		// $this->db->query("UPDATE " . DB_PREFIX . "category SET parent_id = '" . (int)$data['parent_id'] . "', `top` = '" . (isset($data['top']) ? (int)$data['top'] : 0) . "', `column` = '" . (int)$data['column'] . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', date_modified = NOW() WHERE category_id = '" . (int)$category_id . "'");
		//
		// if (isset($data['image'])) {
		// 	$this->db->query("UPDATE " . DB_PREFIX . "category SET image = '" . $this->db->escape($data['image']) . "' WHERE category_id = '" . (int)$category_id . "'");
		// }
		//
		// $this->db->query("DELETE FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "'");
		//
		// foreach ($data['category_description'] as $language_id => $value) {
		// 	$this->db->query("INSERT INTO " . DB_PREFIX . "category_description SET category_id = '" . (int)$category_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		// }
		//
		// // MySQL Hierarchical Data Closure Table Pattern
		// $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE path_id = '" . (int)$category_id . "' ORDER BY level ASC");
		//
		// if ($query->rows) {
		// 	foreach ($query->rows as $category_path) {
		// 		// Delete the path below the current one
		// 		$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_path['category_id'] . "' AND level < '" . (int)$category_path['level'] . "'");
		//
		// 		$path = array();
		//
		// 		// Get the nodes new parents
		// 		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$data['parent_id'] . "' ORDER BY level ASC");
		//
		// 		foreach ($query->rows as $result) {
		// 			$path[] = $result['path_id'];
		// 		}
		//
		// 		// Get whats left of the nodes current path
		// 		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_path['category_id'] . "' ORDER BY level ASC");
		//
		// 		foreach ($query->rows as $result) {
		// 			$path[] = $result['path_id'];
		// 		}
		//
		// 		// Combine the paths with a new level
		// 		$level = 0;
		//
		// 		foreach ($path as $path_id) {
		// 			$this->db->query("REPLACE INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category_path['category_id'] . "', `path_id` = '" . (int)$path_id . "', level = '" . (int)$level . "'");
		//
		// 			$level++;
		// 		}
		// 	}
		// } else {
		// 	// Delete the path below the current one
		// 	$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_id . "'");
		//
		// 	// Fix for records with no paths
		// 	$level = 0;
		//
		// 	$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$data['parent_id'] . "' ORDER BY level ASC");
		//
		// 	foreach ($query->rows as $result) {
		// 		$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category_id . "', `path_id` = '" . (int)$result['path_id'] . "', level = '" . (int)$level . "'");
		//
		// 		$level++;
		// 	}
		//
		// 	$this->db->query("REPLACE INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category_id . "', `path_id` = '" . (int)$category_id . "', level = '" . (int)$level . "'");
		// }
		//
		// $this->db->query("DELETE FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");
		//
		// if (isset($data['category_filter'])) {
		// 	foreach ($data['category_filter'] as $filter_id) {
		// 		$this->db->query("INSERT INTO " . DB_PREFIX . "category_filter SET category_id = '" . (int)$category_id . "', filter_id = '" . (int)$filter_id . "'");
		// 	}
		// }
		//
		// $this->db->query("DELETE FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");
		//
		// if (isset($data['category_store'])) {
		// 	foreach ($data['category_store'] as $store_id) {
		// 		$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_store SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "'");
		// 	}
		// }
		//
		// $this->db->query("DELETE FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "'");
		//
		// if (isset($data['category_layout'])) {
		// 	foreach ($data['category_layout'] as $store_id => $layout_id) {
		// 		$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_layout SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "', layout_id = '" . (int)$layout_id . "'");
		// 	}
		// }
		//
		// $this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . (int)$category_id . "'");
		//
		// if ($data['keyword']) {
		// 	$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'category_id=" . (int)$category_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		// }
		//
		// $this->cache->delete('category');
		//
		// $this->event->trigger('post.admin.category.edit', $category_id);
	}

	public function deleteCategory($category_id) {
		$this->event->trigger('pre.admin.category.delete', $category_id);

		$this->db->query("DELETE FROM " . DB_PREFIX . "category_path WHERE category_id = '" . (int)$category_id . "'");

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_path WHERE path_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$this->deleteCategory($result['category_id']);
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "category WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_to_category WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . (int)$category_id . "'");

		$this->cache->delete('category');

		$this->event->trigger('post.admin.category.delete', $category_id);
	}

	public function repairCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category WHERE parent_id = '" . (int)$parent_id . "'");

		foreach ($query->rows as $category) {
			// Delete the path below the current one
			$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category['category_id'] . "'");

			// Fix for records with no paths
			$level = 0;

			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$parent_id . "' ORDER BY level ASC");

			foreach ($query->rows as $result) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category['category_id'] . "', `path_id` = '" . (int)$result['path_id'] . "', level = '" . (int)$level . "'");

				$level++;
			}

			$this->db->query("REPLACE INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category['category_id'] . "', `path_id` = '" . (int)$category['category_id'] . "', level = '" . (int)$level . "'");

			$this->repairCategories($category['category_id']);
		}
	}

	public function getBanner($banner_id) {
		//$query = $this->db->query("SELECT *, (SELECT GROUP_CONCAT(cd1.name ORDER BY level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "category_description cd1 ON (cp.path_id = cd1.category_id AND cp.category_id != cp.path_id) WHERE cp.category_id = c.category_id AND cd1.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY cp.category_id) AS path, (SELECT DISTINCT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . (int)$category_id . "') AS keyword FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (c.category_id = cd2.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd2.language_id = '" . (int)$this->config->get('config_language_id') . "'");
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "home_configuration_banner WHERE banner_id = '" . (int)$banner_id . "'");
		return $query->row;
	}


	public function getBannertype($banner_id) {
		//$query = $this->db->query("SELECT *, (SELECT GROUP_CONCAT(cd1.name ORDER BY level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "category_description cd1 ON (cp.path_id = cd1.category_id AND cp.category_id != cp.path_id) WHERE cp.category_id = c.category_id AND cd1.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY cp.category_id) AS path, (SELECT DISTINCT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . (int)$category_id . "') AS keyword FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (c.category_id = cd2.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd2.language_id = '" . (int)$this->config->get('config_language_id') . "'");
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "home_configuration WHERE id = '" . (int)$banner_id . "'");
		return $query->row;
	}

	public function getCategories() {
		$sql = "SELECT * FROM oc_home_configuration";

		$query = $this->db->query($sql);

		return $query->rows;
	}


	public function getBannerdetails($banner_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "home_configuration_banner WHERE banner_id = '" . (int)$banner_id . "'");

		return $query->rows;


	}

	public function getBannerdetailscarousel($banner_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "home_configuration_carousel WHERE home_carousel_id = '" . (int)$banner_id . "'");

		return $query->rows;


	}



	public function getBannerdetailsoffers($banner_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "home_configuration_offers WHERE home_offer_id = '" . (int)$banner_id . "'");

		return $query->rows;


	}


	public function getCategoryDescriptions($category_id) {
		$category_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'meta_title'       => $result['meta_title'],
				'meta_description' => $result['meta_description'],
				'meta_keyword'     => $result['meta_keyword'],
				'description'      => $result['description']
			);
		}

		return $category_description_data;
	}

	public function getCategoryFilters($category_id) {
		$category_filter_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_filter_data[] = $result['filter_id'];
		}

		return $category_filter_data;
	}

	public function getCategoryStores($category_id) {
		$category_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_store_data[] = $result['store_id'];
		}

		return $category_store_data;
	}

	public function getCategoryLayouts($category_id) {
		$category_layout_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_layout_data[$result['store_id']] = $result['layout_id'];
		}

		return $category_layout_data;
	}

	public function getTotalCategories() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "home_configuration");

		return $query->row['total'];
	}

	public function getTotalCategoriesByLayoutId($layout_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category_to_layout WHERE layout_id = '" . (int)$layout_id . "'");

		return $query->row['total'];
	}
}
