<section>
  <header>
    <h1>Trabajar con Categorías</h1>
  </header>
  <main class="row">
    <div class="col-12 col-md-8 col-offset-2">
      <table class="full-width">
        <thead>
          <tr>
            <th>Código</th>
            <th>Categoría</th>
            <th>Estado</th>
            <th>
                    <a class="btn depth-1 s-margin" href="index.php?page=categoria&mode=INS&catid=" class="btn"><span class="ion-plus"></span></a>
                </th>
          </tr>
        </thead>
        <tbody class="zebra hover center">
          {{foreach categorias}}
            <tr>
              <td>{{ctgcod}}</td>
              <td>{{ctgdsc}}</td>
              <td>{{ctgest}}</td>
              <td class="center">
                <a class="btn depth-1 s-margin" href="index.php?page=categoria&mode=DSP&ctgcod={{ctgcod}}" class="btn"><span class="ion-eye"></span></a>
                <a class="btn depth-1 s-margin" href="index.php?page=categoria&mode=UPD&ctgcod={{ctgcod}}" class="btn"><span class="ion-edit"></span></a>
                <a class="btn depth-1 s-margin" href="index.php?page=categoria&mode=DEL&ctgcod={{ctgcod}}" class="btn"><span class="ion-trash-b"></span></a>
              </td>
            </tr>
            {{endfor categorias}}
        </tbody>
      </table>
    </div>
  </main>
</section>
<script>
  $().ready(
    function(){
      $("#btnNew").click(function(e){
        e.preventDefault();
        e.stopPropagation();
        window.location.assign("index.php?page=categoria&mode=INS&ctgcod=0");
      });
    }
  )
</script>
