<?php


  function run(){
    addCssRef("public/css/productos.css");
    addJsRef("public/js/productos.js");
    addJsRef("public/js/mainProductos.js");
    addJsRef("public/js/jqueryProductos.js");
    renderizar("basculasComerciales",Array());
  }
  run();
?>