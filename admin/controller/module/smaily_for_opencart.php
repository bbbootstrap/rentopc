<?php
/**
 * This is a plugin for OpenCart to handle subscribers directly
 * to your Smaily contacts, generate rss-feed of products and send
 * abandoned cart emails with Smaily templates.
 *
 * @package smaily_for_opencart
 * @author Smaily
 * @license GPL-3.0+
 * @copyright 2019 Smaily
 *
 * Plugin Name: Smaily for OpenCart
 * Description: Smaily email marketing and automation extension plugin for OpenCart.
 * Version: 1.3.2
 * License: GPL3
 * Author: Smaily
 * Author URI: https://smaily.com/
 *
 * Smaily for OpenCart is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * Smaily for OpenCart is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Smaily for OpenCart. If not, see <http://www.gnu.org/licenses/>.
 */
class ControllerModuleSmailyForOpencart extends Controller {
    private $error = array();

    public function index() {
        // Add language file.
        $this->load->language('module/smaily_for_opencart');
        // Settings model.
        $this->load->model('setting/setting');
        // Smaily admin page model.
        $this->load->model('smailyforopencart/admin');
        // Add heading title.
        $this->document->setTitle($this->language->get('heading_title'));

        // When save is pressed.
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            // Get validate field from db.
            $validated = $this->model_setting_setting->getSettingValue('smaily_for_opencart_validated');
            // Form data.
            $data = $this->request->post;
            // Append validated status to form data.
            if ($validated) {
                $data['smaily_for_opencart_validated'] = $validated;
            }

            // Abandoned cart start time.
            $abandoned_cart_enabled = (int) $this->model_setting_setting->getSettingValue(
                'smaily_for_opencart_enable_abandoned'
            );
            $data['smaily_for_opencart_abandoned_cart_time'] = $this->model_setting_setting->getSettingValue(
                'smaily_for_opencart_abandoned_cart_time'
            );
            // Update start time only if abandoned cart was previously disabled and now being activated.
            if (! $abandoned_cart_enabled && (int) $data['smaily_for_opencart_enable_abandoned']) {
                $data['smaily_for_opencart_abandoned_cart_time'] = date('Y-m-d H:i:s');
            }

            // Add sync time.
            $sync_time = $this->model_setting_setting->getSettingValue('smaily_for_opencart_sync_time');
            // Add init time before sync.
            if (!isset($sync_time)) {
                $sync_time = date('c', 0);
            }
            $data['smaily_for_opencart_sync_time'] = $sync_time;
            // Get credentials.
            $data['smaily_for_opencart_subdomain'] = $this->model_setting_setting->getSettingValue('smaily_for_opencart_subdomain');
            $data['smaily_for_opencart_username'] = $this->model_setting_setting->getSettingValue('smaily_for_opencart_username');
            $data['smaily_for_opencart_password'] = $this->model_setting_setting->getSettingValue('smaily_for_opencart_password');
            // Save settings
            $this->model_setting_setting->editSetting('smaily_for_opencart', $data);
            // Redirect to module settings page.
            $this->response->redirect(
                $this->url->link(
                    'module/smaily_for_opencart',
                    'token=' . $this->session->data['token'] . '&success=true',
                    true
                )
            );
        }

        // Form sections.
        $data['sections'] = array(
            array(
                'section_id' => 1,
                'name' => $this->language->get('section_general'),
            ),
            array(
                'section_id' => 2,
                'name' => $this->language->get('section_customer'),
            ),
            array(
                'section_id' => 3,
                'name' => $this->language->get('section_abandoned'),
            ),
        );

        // Text fields
        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_edit']     = $this->language->get('text_edit');
        $data['text_enabled']  = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['entry_name']    = $this->language->get('entry_name');
        $data['entry_banner']  = $this->language->get('entry_banner');
        $data['entry_width']   = $this->language->get('entry_width');
        $data['entry_height']  = $this->language->get('entry_height');
        $data['entry_status']  = $this->language->get('entry_status');

        // Enable module.
        $data['entry_enable_module_title']     = $this->language->get('entry_enable_module_title');
        $data['entry_enable_subscriber_title'] = $this->language->get('entry_enable_subscriber_title');
        $data['entry_enable_abandoned_title']  = $this->language->get('entry_enable_abandoned_title');
        // Subdomain.
        $data['subdomain_title']       = $this->language->get('entry_subdomain_title');
        $data['subdomain_placeholder'] = $this->language->get('placeholder_subdomain');
        // Username.
        $data['username_title']       = $this->language->get('entry_username_title');
        $data['username_placeholder'] = $this->language->get('placeholder_username');
        // Password.
        $data['password_title']       = $this->language->get('entry_password_title');
        $data['password_placeholder'] = $this->language->get('placeholder_password');
        // Credentials validated status.
        //$data['validated'] = $this->model_setting_setting->getSettingValue('smaily_for_opencart_validated_for_opencart_validated');
        // Validate button.
        $data['button_validate'] = $this->language->get('button_validate');
        $data['validate_title']  = $this->language->get('validate_title');
        // Reset credentials.
        $data['button_reset_credentials'] = $this->language->get('button_reset_credentials');
        $data['reset_credentials_title']  = $this->language->get('reset_credentials_title');
        // Autoresponder title.
        $data['entry_autoresponder_title'] = $this->language->get('entry_autoresponder_title');
        // Rss feed.
        $data['rss_feed_title'] = $this->language->get('rss_feed_title');
        $data['rss_feed_text']  = $this->language->get('rss_feed_text');

        // Subscriber sync fields.
        $data['entry_customer_sync_fields_title'] = $this->language->get('entry_customer_sync_fields_title');
        $data['sync_token_title']                 = $this->language->get('sync_token_title');
        $data['sync_token_placeholder']           = $this->language->get('sync_token_placeholder');
        $data['sync_customer_url_title']          = $this->language->get('sync_customer_url_title');
        $data['customer_cron_text']               = $this->language->get('customer_cron_text');
        // Customer sync option fields text.
        $data['firstname']  = $this->language->get('firstname');
        $data['lastname']   = $this->language->get('lastname');
        $data['telephone']  = $this->language->get('telephone');
        $data['date_added'] = $this->language->get('date_added');

        // Abandoned cart fields.
        $data['abandoned_sync_fields_title'] = $this->language->get('abandoned_sync_fields_title');
        $data['delay_title']                 = $this->language->get('delay_title');
        $data['abandoned_minutes']           = $this->language->get('abandoned_minutes');
        $data['cart_token_title']            = $this->language->get('cart_token_title');
        $data['cart_token_placeholder']      = $this->language->get('cart_token_placeholder');
        $data['sync_cart_url_title']         = $this->language->get('sync_cart_url_title');
        $data['cart_cron_text']              = $this->language->get('cart_cron_text');
        // Abandoned cart option fields text.
        $data['customer_first_name'] = $this->language->get('customer_first_name');
        $data['customer_last_name']  = $this->language->get('customer_last_name');
        $data['product_name']        = $this->language->get('product_name');
        $data['product_description'] = $this->language->get('product_description');
        $data['product_sku']         = $this->language->get('product_sku');
        $data['product_quantity']    = $this->language->get('product_quantity');
        $data['product_price']       = $this->language->get('product_price');
        $data['product_base_price']  = $this->language->get('product_base_price');
        // Small texts.
        $data['small_subdomain']       = $this->language->get('small_subdomain');
        $data['smaily_rss_url']        = $this->config->get('config_url') . 'index.php?route=smailyforopencart/rss';
        $data['small_password']        = $this->language->get('small_password');
        $data['small_sync_additional'] = $this->language->get('small_sync_additional');
        $data['small_cart_additional'] = $this->language->get('small_cart_additional');
        $data['small_cart_delay']      = $this->language->get('small_cart_delay');
        $data['small_token']           = $this->language->get('small_token');

        $data['button_save']   = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['token']         = $this->session->data['token'];

        // Display success message after save.
        if (isset($this->request->get['success'])) {
            $data['success'] = $this->language->get('text_success');
        } else {
            $data['success'] = '';
        }

        // Display warning.
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }
        // Subdomain error.
        if (isset($this->error['subdomain'])) {
            $data['error_subdomain'] = $this->error['subdomain'];
        } else {
            $data['error_subdomain'] = '';
        }
        // Username error.
        if (isset($this->error['username'])) {
            $data['error_username'] = $this->error['username'];
        } else {
            $data['error_username'] = '';
        }
        // Password error.
        if (isset($this->error['password'])) {
            $data['error_password'] = $this->error['password'];
        } else {
            $data['error_password'] = '';
        }
        // Validate error.
        if (isset($this->error['validate'])) {
            $data['error_validate'] = $this->error['validate'];
        } else {
            $data['error_validate'] = '';
        }
        // Abandoned cart autoresponder error.
        if (isset($this->error['autoresponder'])) {
            $data['error_autoresponder'] = $this->error['autoresponder'];
        } else {
            $data['error_autoresponder'] = '';
        }
        // Abandoned cart delay error.
        if (isset($this->error['cart_delay'])) {
            $data['error_delay'] = $this->error['cart_delay'];
        } else {
            $data['error_delay'] = '';
        }

        // BreadCrumb
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
        );
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], true)
        );
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('module/smaily_for_opencart', 'token=' . $this->session->data['token'], true)
        );

        // Save and cancel button href-s.
        $data['action'] = $this->url->link('module/smaily_for_opencart', 'token=' . $this->session->data['token'], true);
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], true);

        /**
         * Data for fields.
         */
        // Subdomain
        if (isset($this->request->post['smaily_for_opencart_subdomain'])) {
            $data['subdomain'] = $this->request->post['smaily_for_opencart_subdomain'];
        } else {
            $data['subdomain'] = $this->config->get('smaily_for_opencart_subdomain');
        }
        // Username
        if (isset($this->request->post['smaily_for_opencart_username'])) {
            $data['username'] = $this->request->post['smaily_for_opencart_username'];
        } else {
            $data['username'] = $this->config->get('smaily_for_opencart_username');
        }
        // Password
        if (isset($this->request->post['smaily_for_opencart_password'])) {
            $data['password'] = $this->request->post['smaily_for_opencart_password'];
        } else {
            $data['password'] = $this->config->get('smaily_for_opencart_password');
        }

        // Module enabled.
        if (isset($this->request->post['smaily_for_opencart_status'])) {
            $data['module_status'] = $this->request->post['smaily_for_opencart_status'];
        } else {
            $data['module_status'] = $this->config->get('smaily_for_opencart_status');
        }
        // Subscriber sync enabled.
        if (isset($this->request->post['smaily_for_opencart_enable_subscribe'])) {
            $data['subscribe_status'] = $this->request->post['smaily_for_opencart_enable_subscribe'];
        } else {
            $data['subscribe_status'] = $this->config->get('smaily_for_opencart_enable_subscribe');
        }
        // Abandoned cart enabled.
        if (isset($this->request->post['smaily_for_opencart_enable_abandoned'])) {
            $data['abandoned_status'] = $this->request->post['smaily_for_opencart_enable_abandoned'];
        } else {
            $data['abandoned_status'] = $this->config->get('smaily_for_opencart_enable_abandoned');
        }

        // Customer sync additional fields.
        if (isset($this->request->post['smaily_for_opencart_syncronize_additional'])) {
            $data['syncronize_additional'] = $this->request->post['smaily_for_opencart_syncronize_additional'];
        } else {
            $data['syncronize_additional'] = $this->config->get('smaily_for_opencart_syncronize_additional');
        }
        // Customer sync token.
        if (! empty($this->request->post['smaily_for_opencart_sync_token'])) {
            // Get sync token if user adds custom one.
            $data['sync_token'] = $this->request->post['smaily_for_opencart_sync_token'];
        } else {
            if (! empty($this->config->get('smaily_for_opencart_sync_token'))) {
                $data['sync_token'] = $this->config->get('smaily_for_opencart_sync_token');
            } else {
                // Generate random token if not saved in db.
                $data['sync_token'] = uniqid();
            }
        }
        // Customer sync cron url.
        $data['customer_cron_url'] = $this->config->get('config_url') .
            'index.php?route=smailyforopencart/cron_customers&token=' . $data['sync_token'];


        // Abandoned cart autoresponder.
        if (isset($this->request->post['smaily_for_opencart_abandoned_autoresponder'])) {
            $data['abandoned_autoresponder'] = json_decode(html_entity_decode($this->request->post['smaily_for_opencart_abandoned_autoresponder']), true);
        } else {
            $data['abandoned_autoresponder'] = json_decode(html_entity_decode($this->config->get('smaily_for_opencart_abandoned_autoresponder')), true);
        }
        // Abandoned cart additional fields.
        if (isset($this->request->post['smaily_for_opencart_abandoned_additional'])) {
            $data['abandoned_additional'] = $this->request->post['smaily_for_opencart_abandoned_additional'];
        } else {
            $data['abandoned_additional'] = $this->config->get('smaily_for_opencart_abandoned_additional');
        }
        // Abandoned cart delay.
        if (isset($this->request->post['smaily_for_opencart_cart_delay'])) {
            $data['cart_delay'] = $this->request->post['smaily_for_opencart_cart_delay'];
        } else {
            $data['cart_delay'] = $this->config->get('smaily_for_opencart_cart_delay');
        }
        // Abandoned cart token.
        if (! empty($this->request->post['smaily_for_opencart_cart_token'])) {
            // Get sync token if user adds custom one.
            $data['cart_token'] = $this->request->post['smaily_for_opencart_cart_token'];
        } else {
            if (! empty($this->config->get('smaily_for_opencart_cart_token'))) {
                $data['cart_token'] = $this->config->get('smaily_for_opencart_cart_token');
            } else {
                // Generate random token if not saved in db.
                $data['cart_token'] = uniqid();
            }
        }
        // Abandoned cart cron url.
        $data['cart_cron_url'] = $this->config->get('config_url') .
            'index.php?route=smailyforopencart/cron_cart&token=' . $data['cart_token'];



        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/smaily_for_opencart', $data));
    }

    protected function validate() {
        // Premission.
        if (!$this->user->hasPermission('modify', 'module/smaily_for_opencart')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
        // Subdomain filled.
        if (empty(trim($this->request->post['smaily_for_opencart_subdomain']))) {
            $this->error['subdomain'] = $this->language->get('error_subdomain');
        }
        // Username filled.
        if (empty(trim($this->request->post['smaily_for_opencart_username']))) {
            $this->error['username'] = $this->language->get('error_username');
        }
        // Password filled.
        if (empty(trim($this->request->post['smaily_for_opencart_password']))) {
            $this->error['password'] = $this->language->get('error_password');
        }

        // Validate abanconed cart.
        if (isset($this->request->post['smaily_for_opencart_enable_abandoned'])
            && (int) $this->request->post['smaily_for_opencart_enable_abandoned'] === 1
            ) {
            // Autoresponder.
            if (empty($this->request->post['smaily_for_opencart_abandoned_autoresponder'])) {
                $this->error['autoresponder'] = $this->language->get('abandoned_autoresponder_error');
            }
            // Delay time.
            if ($this->request->post['smaily_for_opencart_cart_delay'] < 15) {
                $this->error['cart_delay'] = $this->language->get('cart_delay_error');
            }
        }
        // Check if credentials are validated.
        $validated = $this->config->get('smaily_for_opencart_validated');
        if (! $validated) {
            // Error message.
            $this->error['validate'] = $this->language->get('error_validate');
        }

        return !$this->error;
    }

    /**
     * When validate button is pressed on admin screen.
     *
     * Validates credentials and activates module on successful validation.
     *
     * @return array AJAX response
     */
    public function ajaxValidateCredentials() {
        if ($this->request->server['REQUEST_METHOD'] != 'POST') {
            return;
        }

        $response = [];
        // Language for response.
        $this->load->language('module/smaily_for_opencart');
        // Check if all fields are set.
        if (empty($this->request->post['subdomain']) ||
            empty($this->request->post['username']) ||
            empty($this->request->post['password'])) {
                // Show empty field error message.
                $response['error'] = $this->language->get('error_validate_empty');
                echo json_encode($response);
                return;
        }

        $subdomain = $this->request->post['subdomain'];
        // Normalize subdomain.
        // First, try to parse as full URL. If that fails, try to parse as subdomain.sendsmaily.net, and
        // if all else fails, then clean up subdomain and pass as is.
        if (filter_var($subdomain, FILTER_VALIDATE_URL)) {
            $url = parse_url($subdomain);
            $parts = explode('.', $url['host']);
            $subdomain = count($parts) >= 3 ? $parts[0] : '';
        } elseif (preg_match('/^[^\.]+\.sendsmaily\.net$/', $subdomain)) {
            $parts = explode('.', $subdomain);
            $subdomain = $parts[0];
        }
        $subdomain = preg_replace('/[^a-zA-Z0-9]+/', '', $subdomain);
        $username = html_entity_decode($this->request->post['username']);
        $password = html_entity_decode($this->request->post['password']);

        // Validate credentials with a call to Smaily.
        $validate = $this->validateSmailyCredentials($subdomain, $username, $password);

        // If validated, save validated status to db.
        if (array_key_exists('success', $validate)) {
            if ($this->user->hasPermission('modify', 'module/smaily_for_opencart')) {
                $this->load->model('setting/setting');
                $settings = $this->model_setting_setting->getSetting('smaily_for_opencart');
                // Used because save button saves whole form.
                $settings['smaily_for_opencart_validated'] = 1;
                $settings['smaily_for_opencart_subdomain'] = $this->db->escape($subdomain);
                $settings['smaily_for_opencart_username'] = $this->db->escape($username);
                $settings['smaily_for_opencart_password'] = $this->db->escape($password);
                // Enable module on successful validation.
                $settings['smaily_for_opencart_status'] = 1;
                // Save credentials to db.
                $this->model_setting_setting->editSetting('smaily_for_opencart', $settings);
                $response['success'] = $validate['success'];
            }
        } elseif (array_key_exists('error', $validate)) {
            $response['error'] = $validate['error'];
        } else {
            $response['error'] = $this->language->get('validated_error');
        }
        // Return to ajax call.
        echo json_encode($response);
    }

    /**
     * Delete current credentials and disable module.
     * Runs when reset credentials button is pressed on admin menu.
     *
     * @return array AJAX response
     */
    public function ajaxResetCredentials() {
        if ($this->request->server['REQUEST_METHOD'] != 'POST') {
            return;
        }
        $response = [];

        $this->load->language('module/smaily_for_opencart');
        $this->load->model('setting/setting');

        $settings = $this->model_setting_setting->getSetting('smaily_for_opencart');
        $settings['smaily_for_opencart_subdomain'] = '';
        $settings['smaily_for_opencart_username'] = '';
        $settings['smaily_for_opencart_password'] = '';
        $settings['smaily_for_opencart_validated'] = 0;
        $settings['smaily_for_opencart_status'] = 0;
        $settings['smaily_for_opencart_enable_abandoned'] = 0;
        $settings['smaily_for_opencart_enable_subscribe'] = 0;
        $this->model_setting_setting->editSetting('smaily_for_opencart', $settings);
        $response['success'] = $this->language->get('credentials_reset');
        echo json_encode($response);
    }

    /**
     * Runs when validate button is pressed.
     *
     * @param string $subdomain
     * @param string $username
     * @param string $password
     * @return array response message
     */
    public function validateSmailyCredentials($subdomain, $username, $password) {
        // Response.
        $response = [];
        // cUrl
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://' . $subdomain . '.sendsmaily.net/api/workflows.php?trigger_type=form_submitted');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
        curl_setopt($ch, CURLOPT_USERPWD, "$username:$password");
        $output = curl_exec($ch);
        if (!curl_errno($ch)) {
            switch ($http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE)) {
                case 200:  # OK
                    $response['success'] = $this->language->get('validated_success');
                    break;
                case 401:
                    $response['error'] = $this->language->get('validated_unauthorized');
                    break;
                case 404:
                    $response['error'] = $this->language->get('validated_subdomain_error');
                    break;
                default:
                    $response['error'] = $this->language->get('validated_error');
            }
        }
        curl_close($ch);
        // Response from API call.
        return $response;
    }


    /**
     * Get autoresponders when user has validated and credentials are saved.
     *
     * @return void
     */
    public function ajaxGetAutoresponders() {
        if ($this->request->server['REQUEST_METHOD'] == 'POST') {
            $list = [];
            // Load models.
            $this->load->model('setting/setting');
            $this->load->model('smailyforopencart/admin');
            // Language for resonse.
            $this->load->language('module/smaily_for_opencart');
            // Check if autoresponders are validated.
            if ((int) $this->model_setting_setting->getSettingValue('smaily_for_opencart_validated') === 1) {
                $autoresponders = $this->model_smailyforopencart_admin->apiCall(
                    'workflows',
                    ['trigger_type' => 'form_submitted'],
                    'GET'
                );
                // Return autoresponders
                if (!empty($autoresponders)) {
                    foreach ($autoresponders as $autoresponder) {
                        if (!empty($autoresponder['id']) && !empty($autoresponder['title'])) {
                            $list[$autoresponder['id']] = trim($autoresponder['title']);
                        }
                    }
                }
            }
            echo json_encode($list);
        }
    }

    /**
     * Creates abandoned carts table, customer sync table, and action hook for module.
     *
     * @return void
     */
    public function install() {
        $this->load->model('extension/event');
        $this->load->model('smailyforopencart/admin');
        // Create database.
        $this->model_smailyforopencart_admin->install();
        // Add event listener for order.
        $this->model_extension_event->addEvent(
            'smaily_order',
            'catalog/controller/checkout/confirm/after',
            'smailyforopencart/order/removeSent'
        );
        // Add event for upgrading module.
        $this->model_extension_event->addEvent(
            'smaily_upgrade',
            'admin/model/extension/modification/addModification/after',
            'smailyforopencart/upgrade/upgrade'
        );
        $this->model_extension_event->addEvent(
            'smaily_reset_empty_cart',
            'catalog/controller/checkout/cart/remove/after',
            'smailyforopencart/order/removeWhenCartEmpty'
        );
    }

    /**
     * Removes action hook and deletes abandoned cart table.
     *
     * @return void
     */
    public function uninstall() {
        $this->load->model('extension/event');
        $this->load->model('smailyforopencart/admin');
        // Remove smaily table
        $this->model_smailyforopencart_admin->uninstall();
        // Remove event handlers.
        $this->model_extension_event->deleteEvent('smaily_order');
        $this->model_extension_event->deleteEvent('smaily_upgrade');
        $this->model_extension_event->deleteEvent('smaily_reset_empty_cart');
    }
}
