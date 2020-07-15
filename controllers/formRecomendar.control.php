<?php


  function run(){
    addCssRef("public/css/recomendar.css");
    addJsRef("public/js/productos.js");
    addJsRef("public/js/formularior.js");
    addJsRef("public/js/mainProductos.js");
    addJsRef("public/js/jqueryProductos.js");
    renderizar("formRecomendar",Array());
  }
  run();
?>