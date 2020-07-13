<?php

require_once 'libs/dao.php';



/**
 * obtiene todos los almacenes de la tabla
 *
 * @return array Arreglo con los registros de almacenes
 */
function obtenerAlmacenes(){
    $sqlSTR = "SELECT * from almacenes;";
    return obtenerRegistros($sqlSTR);
}

/**
 * Undocumented function
 *
 * @param [type] $almcod
 * @return void
 */
function obtenerAlmacebesXId($almcod){
    $sqlSRTR = "SELECT * from almacenes where almcod=%d;";
    return obtenerUnRegistro(
        sprintf(
            $sqlSRTR,
            $almcod
        )
    );
}

function agregarAlmacen($almdsc, $almtyp, $almest){
    $sqlINS = "INSERT INTO almacenes (almdsc, almtyp, almest) values ('%s', '%s', '%s');";

    return ejecutarNonQuery(
        sprintf(
            $sqlINS,
            $almdsc,
            $almtyp,
            $almest
        )
    );
}


function actualizarAlmacen( $almdsc, $almtyp, $almest, $almcod){
    $sqlUPD = "UPDATE almacenes SET almdsc = '%s', almtyp = '%s', almest = '%s' where almcod = %d;";

    return ejecutarNonQuery(
        sprintf(
            $sqlUPD,
            $almdsc,
            $almtyp,
            $almest,
            $almcod 
        )
    );
}

function eliminarAlmacen($almcod){
    $sqlDEL = "DELETE  FROM almacenes where almcod = %d;";
    return ejecutarNonQuery(
        sprintf(
            $sqlDEL,
            $almcod
        )
    );
}

?>