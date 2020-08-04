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

require_once "models/mantenimientos/productos.model.php";

/**
 * Corre el Controlador
 *
 * @return void
 */
function run()
{
    $arrDataView = array();
    $arrDataView["productos"] = productoCatalogoBasculasIndustriales();
    addJsRef("public/css/productos.css");
    addJsRef("public/css/productos.css");
    //addJsRef("public/js/productos.js");
    //addJsRef("public/js/mainProductos.js");
    //ddJsRef("public/js/jqueryProductos.js");
    renderizar("basculasIndustriales", $arrDataView);
}
run();
?>