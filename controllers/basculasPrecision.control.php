<?php
/**
 * PHP Version 7
 * Controlador de Controlador
 *
 * @category Controllers_Home
 * @package  Controllers\Home
 * @author   Orlando J Betancourth <orlando.betancourth@gmail.com>
 * @license  Comercial http://
 *
 * @version CVS:1.0.0
 *
 * @link http://url.com
 */
 // Sección de requires

require_once "models/mantenimiento/productos.models.php";

/**
 * Corre el Controlador
 *
 * @return void
 */
function run()
{
    $arrDataView = array();
    $arrDataView["productos"] = productoCatalogoBasculasPrecision();
    addJsRef("public/js/productos.js");
    addJsRef("public/js/mainProductos.js");
    addJsRef("public/js/jqueryProductos.js");
    renderizar("basculasPrecision", $arrDataView);
}
run();
?>