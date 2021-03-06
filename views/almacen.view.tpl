<h1>{{modedsc}}</h1>
<section>
    <form action="index.php?page=almacen&mode={{mode}}&almcod={{almcod}}" method="post">
        <div>
            <label for="almcod">Codigo</label>
            <input type="number" name="almcod" id="almcod" value="{{almcod}}">
        </div>
        <div>
            <label for="almdsc">Almacen</label>
            <input type="text" name="almdsc" id="almdsc" value="{{almdsc}}">
        </div>
        <div>
            <label for="almtyp">Tipo</label>
            <select name="almtip" id="almtip">
                <option value="WRH" {{almtyp_WRH}}>Alamacen</option>
                <option value="RTL" {{almtyp_RTL}}>Punto de Venta</option>
                <option value="TRS" {{almtyp_TRS}}>Alamacen de Distribucion</option>
            </select>
        </div>
        <div>
            <label for="almcod">Estado</label>
            <select name="almest" id="almest">
                <option value="PLN" {{almest_PLN}}>En construccion </option>
                <option value="ACT" {{almest_ACT}}>Activo</option>
                <option value="INA" {{almest_INA}}>Inactivo</option>
            </select>
        </div>
        <div>
            <button type="submit" name="btnGuardar">Guardar</button>
            &nbsp;
            <button type="submit" name="btnCancelar">Cancelar </button>
        </div>
    </form>
</section>