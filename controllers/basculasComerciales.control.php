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
    $arrDataView["productos"] = productoCatalogoBasculasComerciales();
<<<<<<< HEAD
    addJsRef("public/css/plantilla.css");
    addJsRef("public/css/productos.css");
=======
    //addJsRef("public/css/plantilla.css");
>>>>>>> e688174f4fe0dbd863f3c122f55e4e825a7576dd
    //addJsRef("public/js/productos.js");
    //addJsRef("public/js/mainProductos.js");
    //addJsRef("public/js/jqueryProductos.js");
    renderizar("basculasComerciales", $arrDataView);
}
run();
?>