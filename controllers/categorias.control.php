<?php
require_once 'models/categorias.models.php';

  function run(){ 
    $arrDataView = array();  
    $arrDataView["categorias"] = obtenerCategorias();
    renderizar("categorias", $arrDataView);
  }
  run();
?>
