<?php


  function run(){
    addCssRef("public/css/venta.css");
    addJsRef("public/js/jqueryInstalaciones.js");
    addJsRef("public/js/mainInstalaciones.js");
    renderizar("servicioVentas",Array());
  }
  run();
?>