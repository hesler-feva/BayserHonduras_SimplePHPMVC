<?php


  function run(){
    addCssRef("public/css/cotizar.css");
    addJsRef("public/js/productos.js");
    addJsRef("public/js/formulariov.js");
    addJsRef("public/js/mainProductos.js");
    addJsRef("public/js/jqueryProductos.js");
    renderizar("formCotizar",Array());
  }
  run();
?>