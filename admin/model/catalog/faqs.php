<?php
class ModelCatalogFaqs extends Model {
	public function addFaq($data) {
		$this->event->trigger('pre.admin.faq.add', $data);

		$this->db->query("INSERT INTO " . DB_PREFIX . "faqs SET faq_group_id = '" . (int)$data['faq_group_id'] . "', sort_order = '" . (int)$data['sort_order'] . "'");

		$faq_id = $this->db->getLastId();

		foreach ($data['faq_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "faq_description SET faq_id = '" . (int)$faq_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}

		$this->event->trigger('post.admin.faq.add', $faq_id);

		return $faq_id;
	}

	public function editfaq($faq_id, $data) {
		$this->event->trigger('pre.admin.faq.edit', $data);

		$this->db->query("UPDATE " . DB_PREFIX . "faq SET faq_group_id = '" . (int)$data['faq_group_id'] . "', sort_order = '" . (int)$data['sort_order'] . "' WHERE faq_id = '" . (int)$faq_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "faq_description WHERE faq_id = '" . (int)$faq_id . "'");

		foreach ($data['faq_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "faq_description SET faq_id = '" . (int)$faq_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}

		$this->event->trigger('post.admin.faq.edit', $faq_id);
	}

	public function deletefaq($faq_id) {
		$this->event->trigger('pre.admin.faq.delete', $faq_id);

		$this->db->query("DELETE FROM " . DB_PREFIX . "faq WHERE faq_id = '" . (int)$faq_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "faq_description WHERE faq_id = '" . (int)$faq_id . "'");

		$this->event->trigger('post.admin.faq.delete', $faq_id);
	}

	public function getfaq($faq_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_faqs");

		return $query->row;
	}

	public function getfaqs($data = array()) {
		$sql = "SELECT *, (SELECT agd.name FROM " . DB_PREFIX . "faq_group_description agd WHERE agd.faq_group_id = a.faq_group_id AND agd.language_id = '" . (int)$this->config->get('config_language_id') . "') AS faq_group FROM " . DB_PREFIX . "faq a LEFT JOIN " . DB_PREFIX . "faq_description ad ON (a.faq_id = ad.faq_id) WHERE ad.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND ad.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		if (!empty($data['filter_faq_group_id'])) {
			$sql .= " AND a.faq_group_id = '" . $this->db->escape($data['filter_faq_group_id']) . "'";
		}

		$sort_data = array(
			'ad.name',
			'faq_group',
			'a.sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY faq_group, ad.name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getfaqDescriptions($faq_id) {
		$faq_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "faq_description WHERE faq_id = '" . (int)$faq_id . "'");

		foreach ($query->rows as $result) {
			$faq_data[$result['language_id']] = array('name' => $result['name']);
		}

		return $faq_data;
	}

	public function getfaqsByfaqGroupId($data = array()) {
		$sql = "SELECT *, (SELECT agd.name FROM " . DB_PREFIX . "faq_group_description agd WHERE agd.faq_group_id = a.faq_group_id AND agd.language_id = '" . (int)$this->config->get('config_language_id') . "') AS faq_group FROM " . DB_PREFIX . "faq a LEFT JOIN " . DB_PREFIX . "faq_description ad ON (a.faq_id = ad.faq_id) WHERE ad.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND ad.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		if (!empty($data['filter_faq_group_id'])) {
			$sql .= " AND a.faq_group_id = '" . $this->db->escape($data['filter_faq_group_id']) . "'";
		}

		$sort_data = array(
			'ad.name',
			'faq_group',
			'a.sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY ad.name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTotalfaqs() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "faq");

		return $query->row['total'];
	}

	public function getTotalfaqsByfaqGroupId($faq_group_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "faq WHERE faq_group_id = '" . (int)$faq_group_id . "'");

		return $query->row['total'];
	}
}