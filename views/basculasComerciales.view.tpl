<div class="contenedor">
    <ul class="slider-contenedor">
        <li>
            <img src="public/imgs/landing-comerciales.jpg" alt="">
            <section class="Slider-informacion">
                <a  href="basculas_comerciales.html"> <button class="btn2"></button> </a>
            </section>
        </li>
        <li>
            <img src="public/imgs/landing-industrial.jpg" alt="">
            <section class="Slider-informacion">
                <a  href="basculas_industriales.html"> <button class="btn3"></button> </a>
            </section>
        </li>
        <li>
            <img src="public/imgs/landing-precision.jpg" alt="">
            <section class="Slider-informacion">
                <a  href="basculas_precision.html"> <button class="btn1"></button> </a>
            </section>
        </li>
    </ul>
    <ol class="pagination">
    </ol>
    <div class="left">
        <span class="ion-android-arrow-dropleft-circle"></span>
    </div>
    <div class="rightS">
        <span class="ion-android-arrow-dropright-circle"></span>
    </div>
</div>

<section class="card depth-2">
    <h1 class="titulo-bascula bg-blue">Basculas Comerciales</h1>   
    <section class="matriz-basculas">
        <div class="columna-6">
            <img src="public/imgs/basculas-comerciales-1.jpg" alt="" class="imagen-bascula">
            <div class="informacion-producto">
                <h2 class="titulo-producto">Aviator 7000:</h2>
                    <p class="parrafo-columna">La serie de básculas de piso VN es la opción correcta para satisfacer sus 
                        necesidades básicas de pesaje en seco en aplicaciones industriales y comerciales. La serie VN de 
                        OHAUS se acopla con las rampas y los accesorios de montaje correspondientes y con un indicador T31P,
                        y ofrece una combinación única de valor, calidad y confiabilidad con la que su empresa puede contar..</p>
            </div>
        </div>
        <div class="columna-6">
            <img src="public/imgs/basculas-comerciales-2.jpg" alt="" class="imagen-bascula">
            <div class="informacion-producto">
                <h2 class="titulo-producto">Aviator 2000:</h2>    
                <p class="parrafo-columna"> Aviator 2000 ofrece todas las características esenciales para una balanza de computación
                        de precio, además de funciones adicionales que proporcionan una experiencia de usuario óptima. Aviator 2000 cuenta
                        con 9 teclas de función, 11 teclas numéricas, y 4 teclas de memoria preseleccionada PLU, así como una gran 
                        plataforma de acero inoxidable, batería interna recargable y tres pantallas con retroiluminación grande, todo 
                        combinado en un diseño elegante que se adapta impecablemente para un ambiente básico comercial.</p>
            </div>
        </div>
    </section>
</section>

<section class="cards row">
  {{foreach productos}}
  <section class="col-12 col-sm-6 col-md-3 m-padding">
    <div class="card col-12 depth-2 m-padding">
      <span class="col-sm-12 center depth-1">
        {{if urlthbprd}}
            <img src="{{urlthbprd}}" alt="{{skuprd}} {{dscprd}}" class="imgthumb center" />
        {{endif urlthbprd}}
      </span>
      <span class="col-12 center depth-1 m-padding card-desc">
          <span class="card-side">{{skuprd}}</span>
          <span class="col-12">{{dscprd}}</span>
      </span>
      <span class="col-12 center depth-1 m-padding">
        <span class="col-6 m-padding">Disponibles</span>
        <span class="col-6 rightS m-padding">{{stkprd}}</span>
        <span class="col-12 bold center m-padding">
          <a href="index.php?page=addtocart&codprd={{codprd}}"
            class="l-padding btn btn-primary col-12 sendToCart">
            L {{prcprd}} <span class="ion-plus-circled"></span>
          </a>
        </span>
      </span>
    </div>
  </section>
  {{endfor productos}}
</section>
<script>
  $().ready(function(){
    $(".sendToCart").click( function(e){
      e.preventDefault();
      e.stopPropagation();
      $.post(
        $(this).attr("href"),
        function( data, success, xqXML ){
          console.log(data);
          if(data.cartAmount && data.cartAmount > 0){
              window.location.reload();
          }
        }
      );
    });
  });
</script>
<style>
  .card{
    position: relative;
  }
  .card-desc{
    height: 4em;
    overflow: scroll;
  }
  .card-side{
      position: absolute;
      top:6em;
      left:1em;
      transform-origin: left top;
      transform: rotate(-90deg);
  }
</style>
