<?php

  /* User Controller
   * 2017-06-14
   * Created By OJBA
   * Bitacora de Cambios:
   * -----------------------------------------------------------------------
   *| Fecha   | Usuario | Descripción                                      |
   * -----------------------------------------------------------------------
   */
  require_once('models/security/security.model.php');
  require_once("libs/validadores.php");

  function run(){
    addCssRef("public/css/registrarsebayser.css");
    $viewData =array();
    if(!empty($_POST['txtCorreo']) && !empty($_POST['txtPswd']) && !empty($_POST['txtName'])){

      
      $viewData["useremail"] = $_POST["txtCorreo"];
      $viewData["username"] = $_POST["txtName"];
      $viewData["usertipo"] =  "ADM";
      $viewData["userest"] =  "ACT";
      $viewData["userpswd"] =  $_POST["txtPswd"];


      //PROCESO DE SALADO

      $fchingreso = time();
      $pswdSalted = "";

      if($fchingreso % 2 == 0){
        $pswdSalted = $viewData["userpswd"] . $fchingreso;
      }else{
        $pswdSalted = $fchingreso . $viewData["userpswd"];
      }

      $pswdSalted = md5($pswdSalted);
      $lastId = insertUsuario(	$viewData["username"],$viewData["useremail"],$fchingreso,$pswdSalted,
                  $viewData["usertipo"], $viewData["userest"] );

      if( $lastId > 0 ){
        redirectWithMessage("Usuario Creado Satisfactoriamente.", "index.php?page=registrarsebayser");
      }else{
        redirectWithMessage("Error en crear usuario.", "index.php?page=registrarsebayser");
      }
        
    }

    renderizar("security/registrarsebayser", $viewData);
  }

  run();

?>