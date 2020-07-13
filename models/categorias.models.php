<?php

require_once 'libs/dao.php';

function obtenerCategorias(){
    $categorias = array();
    $sqlsrt = "SELECT * FROM categorias;";
    $categorias = obtenerRegistros($sqlsrt);
    return $categorias;
}

function obtenerCategoriasXId($catid){
    $arrCategoria = array();
    $sqlstr = "SELECT * FROM categorias where catid = %d;";
    //obtener un registro esta en la libreria dao
    $arrCategoria = obtenerUnRegistro(sprintf($sqlstr, $catid));
    return $arrCategoria;
}

function addNuevaCategoria($catdsc, $catest){
    $sqlINS = "INSERT INTO categorias (catdsc, catest) value ('%s', '%s');";
    ejecutarNonQuery(
        sprintf(
            $sqlINS,
            $catdsc,
            $catest
        )
    );
    $id = getLastInserId();
    return $id;
}

function actualizarCategoria($catid, $catdsc, $catest){
    $sqlUPD = "UPDATE categorias set catdsc='%s', catest='%s' where catid=%d;";
    return ejecutarNonQuery(
        sprintf(
            $sqlUPD,
            $catdsc,
            $catest,
            $catid
        )
    );
}

function eliminarCategoria($catid){
    $sqlDEL = "DELETE from categorias where catid=%d;";
    return ejecutarNonQuery(
        sprintf(
            $sqlDEL,
            $catid
        )
        );
}

?>