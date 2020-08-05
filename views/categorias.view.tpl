<section class="card depth-1">
    <h1>Mantenimiento de Categorias</h1>
</section>
<section class="card depth-1">
    <table class="full-width">
        <thead>
            <tr>
                <th>
                    codigo
                </th>
                <th>
                    Categoria
                </th>
                <th>
                    Estado
                </th>
                <th>
                    <a class="btn depth-1 s-margin" href="index.php?page=categoria&mode=INS&catid=" class="btn"><span class="ion-plus"></span></a>
                </th>
            </tr>
        </thead>
        <tbody class="zebra hover">
            {{foreach categorias}}
            <tr>
                <td class="center">{{catid}}</td>
                <td class="center">{{catdsc}}</td>
                <td class="center">{{catest}}</td>
                <td class="center">
                    <a class="btn depth-1 s-margin"  href="index.php?page=categoria&mode=DSP&catid={{catid}}" class="btn"><span class="ion-eye"></span></a>
                    <a class="btn depth-1 s-margin" href="index.php?page=categoria&mode=UPD&catid={{catid}}" class="btn"><span class="ion-edit"></span></a>
                    <a class="btn depth-1 s-margin" href="index.php?page=categoria&mode=DEL&catid={{catid}}" class="btn"><span class="ion-trash-b"></span></a>
                </td>
            </tr>
            {{endfor categorias}}
        </tbody>
    </table>
</section>
<style>
body{
        background-image: url(public/imgs/ex-header-background.jpg);
}
</style>