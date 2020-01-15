<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        //'css/site.css',
        'theme/css/style.css',
        'theme/plugins/bootstrap/bootstrap.min.css',
        'theme/plugins/slick/slick.css',
        'theme/plugins/themify-icons/themify-icons.css',
    ];
    public $js = [
        'theme/plugins/jQuery/jquery.min.js',
        'theme/plugins/bootstrap/bootstrap.min.js',
        'theme/plugins/slick/slick.min.js',
        'theme/plugins/masonry/masonry.js',
        'theme/plugins/instafeed/instafeed.min.js',
        'theme/plugins/smooth-scroll/smooth-scroll.js',
        'theme/plugins/headroom/headroom.js',
        'theme/plugins/reading-time/readingTime.min.js',
        'theme/js/script.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
