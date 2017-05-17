<?php
class ControllerToolTweaks extends Controller {
	private $error = array();
    private $manual;

	public function index() {
        $this->manual = file_exists(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
        $this->data['hidden'] = (isset($this->request->get['hidden']) or isset($this->request->post['hidden']));
        $this->data['hidden_link']=$this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL');
        if (!$this->data['hidden']) $this->data['hidden_link'].="&hidden=1";
        global $vqmod;

        $this->data['manual'] = $this->manual;
        $this->data['advanced'] = method_exists($vqmod,'RebuildCache');
        $this->data['manual_action']=$this->url->link('tool/tweaks/vqmod_manual', 'token=' . $this->session->data['token'], 'SSL');
        $this->data['auto_action']=$this->url->link('tool/tweaks/vqmod_auto', 'token=' . $this->session->data['token'], 'SSL');
        $this->data['manual_apply']=$this->url->link('tool/tweaks/vqmod_apply', 'token=' . $this->session->data['token'], 'SSL');
		$this->load->language('tool/tweaks');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {

			// Upload VQMod
			if (isset($this->request->post['upload'])) {
				$this->vqmod_upload();

			// Settings
			} else {
				$this->model_setting_setting->editSetting('tweaks', $this->request->post);

				$this->session->data['success'] = $this->language->get('text_success');

				$this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
			}
		}

		// Language
		$this->data = array_merge($this->data, $this->load->language('tool/tweaks'));

		// Warning
		if (isset($this->session->data['error'])) {
			$this->data['error_warning'] = $this->session->data['error'];

			unset($this->session->data['error']);
		} else {
			$this->data['error_warning'] = '';
		}

		// Success
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		// Breadcrumbs
		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('text_home'),
			'separator' => FALSE
		);

		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('heading_title'),
			'separator' => ' :: '
		);

		// Action Buttons
		$this->data['action'] = $this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL');

		// Clear Cache / Logs
		$this->data['clear_log'] = $this->url->link('tool/tweaks/clear_log', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['clear_vqcache'] = $this->url->link('tool/tweaks/clear_cache', 'token=' . $this->session->data['token'], 'SSL');

		// Backup VQMods
		$this->data['backup'] = $this->url->link('tool/tweaks/vqmod_backup', 'token=' . $this->session->data['token'], 'SSL');



        // Attempts to autodetect VQMod path
            $this->data['vqmod_path'] = substr_replace(DIR_SYSTEM, '', -7) . 'vqmod/';
            $this->data['path_set'] = TRUE;

        $this->data['openshop_enabled'] = !file_exists($this->data['vqmod_path'].'xml/OpenShop/OpenShop_disabled');

		// Detect mods
		$vqmods = glob($this->data['vqmod_path'] . 'xml/*.xml*');

        if ($this->data['openshop_enabled'])
            $vqmods = array_merge(glob($this->data['vqmod_path'] . 'xml/OpenShop/*.xml*'),$vqmods);

        $this->data['disabled']=array();

		if (!empty($vqmods)) {
			foreach ($vqmods as $vqmodd) {
				if (strpos($vqmodd, '.xml_')) {
					$file = basename($vqmodd, '.xml_');
				} else {
					$file = basename($vqmodd, '.xml');
				}

                $hide = (($file{0}=='_') or ($file{0}=='-') or ($file{0}=='z') or ($file=='vqmod_opencart'));
                if (!$this->data['hidden'] and $hide) continue;

				$action = array();

				if (strpos($vqmodd, '.xml_')) {
					$action[] = array(
						'text' => $this->language->get('text_install'),
						'href' => $this->url->link('tool/tweaks/vqmod_install', 'token=' . $this->session->data['token'] . '&vqmod=' . $file, 'SSL')
					);
				} else {
					$action[] = array(
						'text' => $this->language->get('text_uninstall'),
						'href' => $this->url->link('tool/tweaks/vqmod_disable', 'token=' . $this->session->data['token'] . '&vqmod=' . $file, 'SSL')
					);
				}

				$xml = simplexml_load_file($vqmodd);

                $info = pathinfo($vqmodd);

                // vQMods localize
                $name=basename($file,'.'.$info['extension']);
                $title=basename($file,'.'.$info['extension']);
                $title=str_replace('-',' ',$title);
                $title=str_replace('_',' ',$title);
                $desc=isset($xml->id) ? $xml->id : $this->language->get('text_unavailable');
                global $os;
                if (isset($os['tweak_'.$name])) $title=$os['tweak_'.$name];
                if (isset($os['desc_'.$name])) $desc=$os['desc_'.$name];
                //------------------

				$data = array(
					'file_name'  => $title,
                    'enabled'    => !strpos($vqmodd, '.xml_'),
					'id'         => $desc,
					'version'    => isset($xml->version) ? $xml->version : $this->language->get('text_unavailable'),
					'vqmver'     => isset($xml->vqmver) ? $xml->vqmver : $this->language->get('text_unavailable'),
					'author'     => isset($xml->author) ? $xml->author : $this->language->get('text_unavailable'),
					'status'     => strpos($vqmodd, '.xml_') ? $this->language->get('text_disabled') : $this->language->get('text_enabled'),
					'delete'     => $this->url->link('tool/tweaks/vqmod_delete', 'token=' . $this->session->data['token'] . '&vqmod=' . basename($vqmodd), 'SSL'),
					'action'     => $action,
                    'vqmod'      => $vqmodd,
                    'hide'       => $hide
				);

                if ($data['enabled']) $this->data['vqmods'][$vqmodd] = $data;
                else $this->data['disabled'][$vqmodd] = $data;
			}
		}

        foreach ($this->data['disabled'] as $vq) $this->data['vqmods'][$vq['vqmod']] = $vq;

		// VQCache files
		if (isset($this->data['vqmod_path'])) {
			$vqcache_dir = $this->data['vqmod_path'] . 'vqcache/';
			$this->data['vqcache'] = array_diff(scandir($vqcache_dir), array('.', '..'));
		}

		// VQMod Error Log
		$log_file = $this->data['vqmod_path'] . 'vqmod.log';

		if (file_exists($log_file) && filesize($log_file) > 0) {

			// Error if log file is larger than 6MB
			if (filesize($log_file) > 6291456) {
				$this->data['error_warning'] = sprintf($this->language->get('error_log_size'), (round((filesize($log_file) / 1048576), 2)));
				$this->data['log'] = sprintf($this->language->get('error_log_size'), (round((filesize($log_file) / 1048576), 2)));

			// Regular log
			} else {
				$this->data['log'] = file_get_contents($log_file, FILE_USE_INCLUDE_PATH, NULL);
			}

		// No log / empty log
		} else {
			$this->data['log'] = '';
		}

		// Template
		$this->template = 'tool/tweaks.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

    // ------------ MXS -------------------------------
    public function vqmod_manual() {
     $this->manual = file_exists(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
        $this->load->language('tool/tweaks');

        if (!$this->user->hasPermission('modify', 'user/user_permission')) {
            $this->session->data['error'] = $this->language->get('error_permission');
        } else {
     if (!$this->manual) {
       $this->clear_cache(true);
       $vqmod = new VQMod();
       $vqmod->RebuildCache();
       $fh = fopen(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual', 'w');
       fclose($fh);
     }
     $this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
        }
    }

    public function openshop_disable() {
        $this->manual = file_exists(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
        $this->load->language('tool/tweaks');

        if (!$this->user->hasPermission('modify', 'user/user_permission')) {
            $this->session->data['error'] = $this->language->get('error_permission');
        } else {
            $fh = fopen(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/OpenShop_disabled', 'w');
            fclose($fh);
            if (!$this->manual) $this->clear_cache(true);
            $this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
        }
    }

    public function openshop_enable() {
        $this->manual = file_exists(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
        $this->load->language('tool/tweaks');

        if (!$this->user->hasPermission('modify', 'user/user_permission')) {
            $this->session->data['error'] = $this->language->get('error_permission');
        } else {
            unlink(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/OpenShop_disabled');
            if (!$this->manual) $this->clear_cache(true);
            $this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
        }
    }

    public function vqmod_auto() {
        $this->manual = file_exists(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
        $this->load->language('tool/tweaks');

        if (!$this->user->hasPermission('modify', 'user/user_permission')) {
            $this->session->data['error'] = $this->language->get('error_permission');
        } else {
        @unlink(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
        $this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
        }
    }

    public function vqmod_apply() {
        $this->manual = file_exists(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
        $this->load->language('tool/tweaks');

        if (!$this->user->hasPermission('modify', 'user/user_permission')) {
            $this->session->data['error'] = $this->language->get('error_permission');
        } else {
        if ($this->manual) {
            $this->clear_cache(true);
       	    $vqmod = new VQMod();
            $vqmod->RebuildCache();
        }
        $this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
        }
    }

	public function vqmod_install() {
        $this->manual = file_exists(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
		$this->load->language('tool/tweaks');

		if (!$this->user->hasPermission('modify', 'user/user_permission')) {
			$this->session->data['error'] = $this->language->get('error_permission');
		} else {
			$path = substr_replace(DIR_SYSTEM, '', -7) . 'vqmod/' . 'xml/';
			$vqmod = $this->request->get['vqmod'];

            if (!file_exists($path . $vqmod . '.xml_')) $path.='OpenShop/';

			if (file_exists($path . $vqmod . '.xml_')) {
				rename($path . $vqmod . '.xml_', $path . $vqmod . '.xml');

				if (!$this->manual) $this->clear_cache($return = true);

				$this->session->data['success'] = $this->language->get('success_install');
			} else {
				$this->session->data['error'] = $this->language->get('error_install');
			}
		}

		$this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
	}

	public function vqmod_disable() {
        $this->manual = file_exists(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
		$this->load->language('tool/tweaks');

		if (!$this->user->hasPermission('modify', 'user/user_permission')) {
			$this->session->data['error'] = $this->language->get('error_permission');
		} else {
			$path = substr_replace(DIR_SYSTEM, '', -7) . 'vqmod/' . 'xml/';

			$vqmod = $this->request->get['vqmod'];
            if (!file_exists($path . $vqmod . '.xml')) $path.='OpenShop/';

			if (file_exists($path . $vqmod . '.xml')) {
				rename($path . $vqmod . '.xml', $path . $vqmod . '.xml_');

                if (!$this->manual) $this->clear_cache($return = true);

				$this->session->data['success'] = $this->language->get('success_uninstall');
                if ($this->manual) $this->session->data['success'] .= '<br/>'.$this->language->get('vqmod_toapply');
			} else {
				$this->session->data['error'] = $this->language->get('error_uninstall');
			}
		}

		$this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
	}

	public function vqmod_upload() {
        $this->manual = file_exists(substr(DIR_SYSTEM,0,-7).'vqmod/xml/OpenShop/vqmod_manual');
		$this->load->language('tool/tweaks');

		if (!$this->user->hasPermission('modify', 'user/user_permission')) {
			$this->session->data['error'] = $this->language->get('error_permission');
		} else {
			umask(0002);
			$file = $this->request->files['vqmod_file']['tmp_name'];
			$file_name = $this->request->files['vqmod_file']['name'];

			if ($this->request->files['vqmod_file']['error'] > 0) {

				switch($this->request->files['vqmod_file']['error']) {
					case 1:
						$this->session->data['error'] = $this->language->get('error_ini_max_file_size');
						break;
					case 2:
						$this->session->data['error'] = $this->language->get('error_form_max_file_size');
						break;
					case 3:
						$this->session->data['error'] = $this->language->get('error_partial_upload');
						break;
					case 4:
						$this->session->data['error'] = $this->language->get('error_no_upload');
						break;
					case 6:
						$this->session->data['error'] = $this->language->get('error_no_temp_dir');
						break;
					case 7:
						$this->session->data['error'] = $this->language->get('error_write_fail');
						break;
					case 8:
						$this->session->data['error'] = $this->language->get('error_php_conflict');
						break;
					default:
						$this->session->data['error'] = $this->language->get('error_unknown');
				}

			} else {
				if ($this->request->files['vqmod_file']['type'] != 'text/xml') {
					$this->session->data['error'] = $this->language->get('error_filetype');

				} else {
					libxml_use_internal_errors(true);
					simplexml_load_file($file);

					if (libxml_get_errors()) {
						libxml_clear_errors();
						$this->session->data['error'] = $this->language->get('error_invalid_xml');

					} elseif (move_uploaded_file($file, substr_replace(DIR_SYSTEM, '', -7) . 'vqmod/' . 'xml/' . $file_name) == FALSE) {
						$this->session->data['error'] = $this->language->get('error_move');

					} else {
                        if (!$this->manual) $this->clear_cache($return = true);

						$this->session->data['success'] = $this->language->get('success_upload');
					}
				}
			}
		}

		$this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
	}

	public function vqmod_delete() {
		$this->load->language('tool/tweaks');

		if (!$this->user->hasPermission('modify', 'user/user_permission')) {
			$this->session->data['error'] = $this->language->get('error_permission');
		} else {
			$path = $this->config->get('vqmod_path') . 'xml/';
			$vqmod = $this->request->get['vqmod'];

			if (unlink($path . $vqmod)) {
				$this->clear_cache($return = true);

				$this->session->data['success'] = $this->language->get('success_delete');
			} else {
				$this->session->data['error'] = $this->language->get('error_delete');
			}
		}

		$this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
	}

	public function vqmod_backup() {
		$this->load->language('tool/tweaks');

		if (!$this->user->hasPermission('modify', 'user/user_permission')) {
			$this->session->data['error'] = $this->language->get('error_permission');
			$this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
		} else {
			$vqmods = glob($this->config->get('vqmod_path') . 'xml/*.xml*');

			$temp = tempnam('tmp', 'zip');

			$zip = new ZipArchive();
			$zip->open($temp, ZipArchive::OVERWRITE);

			foreach ($vqmods as $vqmod) {
				$zip->addFile($vqmod, basename($vqmod));
			}

			$zip->close();

			header('Pragma: public');
			header('Expires: 0');
			header('Content-Description: File Transfer');
			header('Content-Type: application/zip');
			header('Content-Disposition: attachment; filename=vqmod_backup_' . date('Y-m-d') . '.zip');
			header('Content-Transfer-Encoding: binary');
			readfile($temp);
			@unlink($temp);
		}
	}

	public function clear_cache($return = false) {
		$this->load->language('tool/tweaks');

		if (!$this->user->hasPermission('modify', 'user/user_permission')) {
			$this->session->data['error'] = $this->language->get('error_permission');
		} else {
			$files = glob(substr(DIR_SYSTEM,0,-7) . 'vqmod/vqcache/' . 'vq*');

			if ($files) {
				foreach ($files as $file) {
					if (file_exists($file)) {
						@unlink($file);
						clearstatcache();
					}
				}
			}

			if ($return) {
				return;
			}

			$this->session->data['success'] = $this->language->get('success_clear_cache');
		}

		$this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
	}

	public function clear_log() {
		$this->load->language('tool/tweaks');

		if (!$this->user->hasPermission('modify', 'user/user_permission')) {
			$this->session->data['error'] = $this->language->get('error_permission');
		} else {
            unlink(substr_replace(DIR_SYSTEM, '', -7) . 'vqmod/vqmod.log');
			$this->session->data['success'] = $this->language->get('success_clear_log');
		}

		$this->redirect($this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'));
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'user/user_permission')) {
			$this->session->data['error'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
}
?>