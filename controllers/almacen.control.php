<?php
require_once 'models/almacenes.models.php';

  function run(){
    $arrDataView = array();
    $arrDataView["mode"] = "INS";
    $arrDataView["modedsc"] = "";
    $arrDataView["almcod"] = "";
    $arrDataView["almtip"] = "WRH";
    $arrDataView["almest"] = "ACT";
    $arrDataView["almtip_WRH"] = "";
    $arrDataView["almtip_RTL"] = "";
    $arrDataView["almtip_TRS"] = "";
    $arrDataView["almest_PLN"] = "";
    $arrDataView["almest_ACT"] = "";
    $arrDataView["almest_INA"] = "";

    $modedsc = array(
        "INS" => "Nuevo Almacen",
        "DSP" => "Detalle de %s | %s",
        "UPD" => "Actualizando %s | %s",
        "DEL" => "Eliminando %s | %s",
    );


    if(isset($_GET["mode"])){
        $arrDataView["mode"] = $_GET["mode"];
    }

    if(isset($_GET["almcod"])){
        $arrDataView["almcod"] = $_GET["almcod"];
    }

    if(isset($_POST["btnCancelar"])){
        header("location:index.php?page=almacenes");
        die();
    }

     if(isset($_POST["btnGuardar"])){
        $arrDataView["modedsc"] = $_POST["modedsc"];
        $arrDataView["almtip"] = $_POST["almtip"];
        $arrDataView["almest"] = $_POST["almest"];   

        switch($arrDataView["mode"]){
         case "INS":
            agregarAlmacen(
                $arrDataView["modedsc"],
                $arrDataView["almtip"],
                $arrDataView["almest"]);
            redirectWithMessage("Almacen Agregado Satisfactoriamente", "index.php?page=almacenes");
            break;    
        case "UPD":
            actualizarAlmacen(
                $arrDataView["modedsc"],
                $arrDataView["almtip"],
                $arrDataView["almest"],
                $arrDataView["almcod"]
            );
            redirectWithMessage("Almacen Actualizado Satisfactoriamente", "index.php?page=almacenes");
            break;
        case "DEL":
            eliminarAlmacen(
                $arrDataView["almcod"]
            );
            redirectWithMessage("Almacen Eliminado Satisfactoriamente", "index.php?page=almacenes");
            break;

        }
    }

    if(isset($modedsc[$arrDataView["mode"]])){
        if($arrDataView["mode"] != "INS"){
            $almtmp = obtenerAlmacebesXId( $arrDataView["almcod"]);
            $arrDataView["modedsc"] = $almtmp["almdsc"];
            $arrDataView["almtip"] = $almtmp["almtip"];
            $arrDataView["almest"] = $almtmp["almest"];   
            $arrDataView["modedsc"] = sprintf(
                $modedsc[$arrDataView["mode"]],
                $arrDataView["mode"],
                $arrDataView["almdsc"]
            );
            $arrDataView["almtip_WRH"] = ($arrDataView["almtip"] == "WRH"? "selected" : "");
            $arrDataView["almtip_RTL"] = ($arrDataView["almtip"] == "RTL"? "selected":"");
            $arrDataView["almtip_TRS"] = ($arrDataView["almtip"] == "TRS"? "selected":"");
            $arrDataView["almest_PLN"] = ($arrDataView["almest"] == "PLN"? "selected":"");
            $arrDataView["almest_ACT"] = ($arrDataView["almest"] == "ACT"? "selected":"");
            $arrDataView["almest_INA"] = ($arrDataView["almest"] == "INA"? "selected":"");
        } 
    }else{
        redirectWithMessage("Error algo paso", "index.php?page=almacenes");
    }
    renderizar("almacen", $arrDataView);
  }
  run();
?>
