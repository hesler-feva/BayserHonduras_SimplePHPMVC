<?php


  function run(){
    addCssRef("public/css/venta.css");
    addJsRef("public/js/productos.js");
    addJsRef("public/js/mainProductos.js");
    addJsRef("public/js/jqueryProductos.js");
    renderizar("servicioVentas",Array());
  }
  run();
?>