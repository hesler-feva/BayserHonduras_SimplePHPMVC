<?php
/**
 * PHP Version 7
 * Controlador de Paypal
 *
 * @category Controllers_Paypal
 * @package  Controllers\Paypal
 * @author   Orlando J Betancourth <orlando.betancourth@gmail.com>
 * @license  Comercial http://
 *
 * @version CVS:1.0.0
 *
 * @link http://url.com
 */
 // Sección de requires
require_once 'vendor/autoload.php';

/*die(
    "<h1>Revisar el archivo libs/paypal.php</h1>
    <h1>Comentar o eliminar linea 4 despues de agregar los datos
    de autenticación solicitados</h1>
    <h2><a href=\"index.php?page=dashboard\">Regresar</a></h2>"
);*/
/**
 * Retorna el Api Context de Paypal
 *
 * @return void
 */
function getApiContext()
{
    $apiContext = new \PayPal\Rest\ApiContext(
        new \PayPal\Auth\OAuthTokenCredential(
            'AfYs_ATnll5SJF3s2CbTuKYSxC0oEMvmcqSh2Ht5mapMQHBZpsyO4WPrjJzs27c2xXHGMT0GzWyjYebE', 
            'ENl0ZYsUT4KTduNSNH7FBlCdCLpeMML9-rJqApJNp2siEOqfQvh9qi1GF5FMCvGo72MuK0tqV3wt71vL'
        )
    );
    return $apiContext;
}
