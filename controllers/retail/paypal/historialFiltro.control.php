<?php

  /* Users Controller
   * 2017-06-14
   * Created By OJBA
   * Bitacora de Cambios:
   * -----------------------------------------------------------------------
   *| Fecha   | Usuario | Descripción                                      |
   * -----------------------------------------------------------------------
   */
require_once 'models/mantenimientos/productos.model.php';
function run(){
    $data = array();
    $data["fltEmail"] = "";
    $filter = '';
    if(isset($_SESSION["transacciones_context"])){
      $filter = $_SESSION["transacciones_context"]["filter"];
    }

    if($_SERVER["REQUEST_METHOD"] == "POST"){
      $filter = $_POST["fltEmail"];
      $_SESSION["transacciones"] = array("filter"=>$filter);
    }
    $data["fltEmail"] = $filter;
    $data["transacciones"] = historiaTransaccionesXUser($filter, '%');
    renderizar("retail/paypal/historial", $data );
}

run();

?>