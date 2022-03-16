{*
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
*}

<style>

    .button-container {
        margin-top: 1rem;
    }

    .kplev-button-info,
    .kplev-button-rate,
    .kplev-button-documentation,
    .kplev-button-contact-support {
        background-image: linear-gradient(to right, #187FE5, #4FC1FA) !important;
        width: 200px;
        color: white !important;
        border-radius: 25px !important;
        border: none !important;
        height: 44px !important;
        line-height: 21px !important;
        font-size: 17px !important;
        opacity: 0.9 !important;
    }

    .kplev-button-rate {
        background-image: linear-gradient(to right, #4F3F77, #988AB9) !important;
    }

    .kplev-button-contact-support {
        background-image: linear-gradient(to right, #2D7460, #72B6BE) !important;
    }

    .kplev-button-documentation {
        background-image: linear-gradient(to right, #2C4476, #4A6397) !important;
        width: 75px !important;
        display: inline-block !important;
    }

    .kplev-button-rate i,
    .kplev-button-documentation i,
    .kplev-button-contact-support i,
    .kplev-button-info i {
        color: white !important;
        float: left !important;
        font-size: 25px !important;
    }

    .kplev-button-info:hover,
    .kplev-button-rate:hover,
    .kplev-button-contact-support:hover,
    .kplev-button-documentation:hover {
        opacity: 1 !important;
    }

    .kplev-button-info:focus,
    .kplev-button-rate:focus,
    .kplev-button-contact-support:focus,
    .kplev-button-documentation:focus {
        outline: none !important;
    }

    .button-container .col-lg-6 {
        text-align: center;
    }

    .kplev-button-rate,
    .kplev-button-info {
        margin-top: 20px;
    }

    .documentation-dropdown {
        position: absolute;
        right: -60px;
        top: 0;
        text-align: center;
        width: 150px;
        z-index: 99;
        display: none;
    }

    .documentation-dropdown .lang {
        line-height: 20px;
        display: block;
        font-size: 15px;
    }

    .documentation-dropdown .lang:hover {
        color: white;
        background-color: #FF7871 !important;
    }

    .documentation-dropdown {
        /*position: relative;*/
        /*background: #00aabb;*/
        border-radius: .4em;
        border: 2px solid #FF7871;
    }

    .documentation-dropdown:after {
        content: '';
        position: absolute;
        left: 0;
        top: 30%;
        width: 0;
        height: 0;
        border: 14px solid transparent;
        border-right-color: #FF7871;
        border-left: 0;
        margin-top: -14px;
        margin-left: -14px;
    }

    .custom-text-container {
        min-height: 200px !important;
        font-size: 15px !important;
        text-align: justify;
        padding: 0 115px !important;
        line-height: 25px !important;
        margin-top: 45px;
    }

    .custom-text-container-second {
        font-size: 15px !important;
        text-align: justify;
        padding: 0 115px !important;
        line-height: 25px !important;
        margin-bottom: 10px !important;
    }

    .cursor-pointer {
        cursor: pointer;
    }
</style>
<div class="panel kpi-container">
    <div class="panel-heading">
        <i class="icon-home"></i> {l s='Helloo!' mod='adminloginfix'}
    </div>
    <div class="kpi-refresh"></div>
    <div class="row">
        <div class="col-sm-6 col-lg-6">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <a target="blank" href="https://presta.hu">
                    <img class="bt-effect img-responsive" src="{$localPath}/views/img/banner.png"
                         alt="{l s='Discover' mod='adminloginfix'}">
                </a>
            </div>
        </div>
        <div class="button-container col-xs-12 col-sm-12 col-md-6 col-lg-6">
            <div class="custom-text-container col-lg-12">
                {l s='If you have any questions, we are at your disposal with any information you require.
                Don`t hesitate to leave a rating and a comment on the module. We value your opinions and feedback.
                Keep an eye on the module version and check if updates are available. If you need help with updating, just contact us.' mod='adminloginfix'}
            </div>

            <div class="col-sm-6 col-lg-6">
                <a href="https://addons.prestashop.com/en/ratings.php" target="_blank">
                    <button class="btn btn-default kplev-button-rate">
                        <i class="icon-star"></i>
                        {l s='Rate me' mod='adminloginfix'}
                    </button>
                </a>
            </div>
            <div class="col-sm-6 col-lg-6">
                <button class="btn btn-default kplev-button-info">
                    <i class="icon-info-circle"></i>
                    {l s='Version' mod='adminloginfix'}: {$moduleVersion}
                </button>
            </div>
        </div>
    </div>
</div>
