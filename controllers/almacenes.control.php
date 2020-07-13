<?php
require_once 'models/almacenes.models.php';

  function run(){
    $arrDataView = array();
    $arrDataView["almacenes"] = obtenerAlmacenes();
    renderizar("almacenes", $arrDataView);
  }
  run();
?>

