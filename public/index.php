<?php

if (PHP_MAJOR_VERSION < 8) {
    die('Необходима версия PHP >= 8');
}

require_once dirname(__DIR__) . '/config/init.php';
require_once HELPERS . '/functions.php';
require_once CONFIG . '/routes.php';

new \wfm\App();

//debug(\wfm\Router::getRoutes());

//throw new Exception('Возникла ошибочка!', 404);
//echo 'Hello!';
//echo $test;

//echo \wfm\App::$app->getProperty('pagination');
//\wfm\App::$app->setProperty('test', 'TEST');
//var_dump(\wfm\App::$app->getProperties());

