<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css2?family=Baloo+Thambi+2&display=swap" rel="stylesheet"> 
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" >
            <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
            <link rel="stylesheet" href="public/css/papier.css" />
            <!--<link rel="stylesheet" href="public/css/estilo.css" />-->
            <link rel="stylesheet" href="public/css/plantilla.css" />
<<<<<<< HEAD
            <!--<link rel="stylesheet" href="public/css/pruebalogin.css" />-->
            <!--<script src="public/js/jquery.min.js"></script>-->
            <!--<script src="public/js/hamburguer.js"></script>-->
=======
            <link rel="stylesheet" href="public/css/pruebalogin.css" />
            <script src="public/js/jquery.min.js"></script>
             <script src="public/js/productos.js"></script>
            <script src="public/js/hamburguer.js"></script>
>>>>>>> b3dc6214f0fb65dd80c42b8a4e600cb033b45a54
            {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
            {{endfor css_ref}}
        </head>
        <body>
            <!--Barra nav-->
          <header>
            <nav>
                <div class="logo"><a href="index.php?page=landing">
                <img class="imgnav" src="public/imgs/LogoNav2.png" alt=""></a>
                </div>
                    <ul >
                        <li><a href="index.php?page=landing">Inicio</a></li>
                        <li><a href="">Productos</a>
                        <ul>
                            <li><a href="index.php?page=basculasPrecision">Basculas de Precision</a></li>
                            <li><a href="index.php?page=basculasIndustriales">Basculas de Industriales</a></li>
                            <li><a href="index.php?page=basculasComerciales">Basculas de Comerciales</a></li>
                        </ul></li>
                        <li><a href="">Servicios</a>
                            <ul >
                                <li><a href="index.php?page=servicioVentas">Venta</a></li>
                                <li><a href="index.php?page=instalaciones">Instalación</a></li>
                                <li><a href="index.php?page=servicioMantenimiento">Mantenimiento</a></li>
                            </ul>
                        </li>
                        <li><a href="index.php?page=quienesSomos">Quienés Somos</a></li>
                        <li><a href="index.php?page=formCotizar">Cotizaciones</a></li>
                        <li><a href="index.php?page=formRecomendar">Recomendaciones</a></li>
                        <li><a href="index.php?page=loginbayser">Iniciar Sesion</a></li>
                    
                        <div class="btn_hamburger">
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </ul>
            </nav>      
         </header>
          <!--Esto no se toca!!!-->
            <div class="contenido">
                {{{page_content}}}
            </div>
        <footer>          
            <div class="titulo-footer">
                <h3>Bayser Honduras</h3>
            </div>   
            <div class="container">
                <section class="ubicacion col-3">
                    <div class="icono-ubicacion">
                        <span class="ion-location"></span>
                        <div class="informacion-ubicacion">
                            <h3>Ubicación</h3>
                            <p class="direccion-ubicacion">Colonia Nueva Suyapa,</Br> Tegucigalpa, MDC, Honduras,<br> Centroamérica</p>
                        </div>
                    </div>
                </section>
                <section class="horario col-3">
                    <div class="icono-horario">
                        <span class="ion-android-alarm-clock"></span>
                        <div class="informacion-horario">
                            <h3>Horario</h3>
                            <p class="texto-horario">Lunes a Viernes de 8:00 am a 5:00 pm <br> Sabados y Domingos Cerrado</p>
                        </div>
                    </div>
                </section>
                <section class="socios col-3">
                    <div class="icono-ohaus">
                        <h3 class="titulo-socios">Distribuidores de Bayser Honduras</h3>
                        <img class="icono-socio-ohaus" src="public/imgs/ohaus2.png" alt="ohaus">
                        <div class="icono-socios"></div>
                    </div>
                </section>
            </div>
            <div class="pregunta">
                <span class="pregunta-span">¿Ya nos sigues?</span>
            </div>
            <section class="redes-sociales">    
                <a target="_blank" href="https://accounts.google.com/ServiceLogin?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1" class="enlace-mail"><span class="ion-ios-email"></span><span class="span-email">Envíanos un correo</span></a>
                <a target="_blank" href="https://es-la.facebook.com/bayser.hn/" class="enlace-facebook"><span class="ion-social-facebook"></span><span class="span-facebook">Seamos Amigos</span></a>
                <a target="_blank" href="" class="enlace-whatsapp"><span class="ion-social-whatsapp"></span><span class="span-whatsapp">+504-9999-9999</span></a>
                <a target="_blank" href="" class="enlace-celular"><span class="ion-ios-telephone"></span><span class="span-celular">+504-9999-9999</span></a>
            </section>
            <div class="Copyright">
                <span >Copyright &copy; 2020 | Los Piratas  </span>
            </div>
        </footer>
            {{foreach js_ref}}
                <script src="{{uri}}"></script>
            {{endfor js_ref}}
            <script>
                 $().ready(function(e){
                $(".hbtn").click(function(e){
                  e.preventDefault();
                  e.stopPropagation();
                  $(".menu").toggleClass('open');
                  });
                });
            </script>
        </body>
    </html>
