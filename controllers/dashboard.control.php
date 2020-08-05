<?php
/**
 * PHP Version 7
 * Controlador de Mantenimientos_Menu
 *
 * @category Controllers_Mantenimientos_Menu
 * @package  Controllers\Mantenimientos_Menu
 * @author   Orlando J Betancourth <orlando.betancourth@gmail.com>
 * @license  Comercial http://
 *
 * @version CVS:1.0.0
 *
 * @link http://url.com
 */
 // Sección de requires

/**
 * Corre el Controlador
 *
 * @return void
 */
function run()
{
    $arrDataView = array();
    $arrFunciones = array();
    //Para Obtener el usuario logueado
    $usuario = $_SESSION["userCode"];
    if (isAuthorized('usuarios', $usuario)) {
        $arrFunciones[] = array(
            "page" => "users",
            "pageDsc"=>"users",
            "ionicon"=> "person"
        );
    }
    if (isAuthorized('roles', $usuario)) {
        $arrFunciones[] = array(
            "page" => "roles",
            "pageDsc"=>"roles",
            "ionicon"=> "clipboard"
        );
    }
    if (isAuthorized('funciones', $usuario)) {
        $arrFunciones[] = array(
          "page" => "programas",
          "pageDsc" => "programas",
          "ionicon" => "gear-b"
        );
    }
    $arrDataView["Funciones"] = $arrFunciones;
    renderizar("dashboard", $arrDataView);
}
// Correr el controlador
run();
?>
