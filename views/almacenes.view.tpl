<section class="card dpth-1">
    <h1>Gestion Almacenes</h1>
</section>
<table class="full-width">
    <thead>
        <tr>
            <th>
                codigo
            </th>
            <th>
                almacen
            </th>
            <th>
                Tipo
            </th>
            <th>
                Estado
            </th>
            <th>
                <a class="btn depth-1 s-margin" href="index.php?page=almacen&mode=INS&almcod=" class="btn"><span class="ion-plus"></span></a>
            </th>
        </tr>
    </thead>
    <tbody class="zebra hover">
        {{foreach almacenes}}
        <tr>
            <td class="center">
                {{almcod}}
            </td>
            <td>
                {{almdsc}}
            </td>
            <td>
                {{almtyp}}
            </td>
            <td>
                {{almest}}
            </td>
            <td class="center">
                <a class="btn depth-1 s-margin" href="index.php?page=almacen&mode=DSP&almcod={{almcod}}" class="btn"><span class="ion-eye"></span></a>
                <a class="btn depth-1 s-margin" href="index.php?page=almacen&mode=UPD&almcod={{almcod}}" class="btn"><span class="ion-edit"></span></a>
                <a class="btn depth-1 s-margin" href="index.php?page=almacen&mode=DEL&almcod={{almcod}}" class="btn"><span class="ion-trash-b"></span></a>
            </td>
        </tr>
        {{endfor almacenes}}
    </tbody>
</table>