<?php
/**
 * PrestaHU
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Commercial License
 * you can't distribute, modify or sell this code
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file
 * If you need help please contact info@presta.hu
 *
 * @author    PrestaHU <info@presta.hu>
 * @copyright PrestaHU
 * @license   commercial
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

class Adminloginfix extends Module
{
    protected $config_form = false;

    public function __construct()
    {
        $this->name = 'adminloginfix';
        $this->tab = 'administration';
        $this->version = '1.0.0';
        $this->author = 'PrestaHU';
        $this->need_instance = 0;

        /**
         * Set $this->bootstrap to true if your module is compliant with bootstrap (PrestaShop 1.6)
         */
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Fix \"Stay logged in\" and \"Forgot password\" on admin login page');
        $this->description = $this->l('Fix \"Stay logged in\" and \"Forgot password\" on admin login page');

        $this->ps_versions_compliancy = array('min' => '1.6', 'max' => _PS_VERSION_);
    }

    /**
     * Don't forget to create update methods if needed:
     * http://doc.prestashop.com/display/PS16/Enabling+the+Auto-Update
     */
    public function install()
    {
        return parent::install() &&
            $this->registerHook('actionAdminLoginControllerSetMedia');
    }

    public function uninstall()
    {
        return parent::uninstall();
    }

    /**
     * Load the configuration form
     */
    public function getContent()
    {

        $this->context->smarty->assign('module_dir', $this->_path);
        $this->context->smarty->assign(array(
            'moduleVersion' => $this->version,
            'localPath' => Media::getCSSPath($this->getLocalPath(), false, false)
        ));
        $output = $this->context->smarty->fetch($this->local_path . 'views/templates/admin/configure.tpl');
        return $output;
    }


    public function hookActionAdminLoginControllerSetMedia()
    {
        if ($this->active) {
            $this->context->controller->addCSS($this->_path . 'views/css/_admin-fix.css');
        }
    }
}
