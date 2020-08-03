<section class="contenido">
        <div class="informacion">

        <form action="index.php?page=loginbayser" class="formulario" method="POST" id="formLogin" novalidate>
                <h1>Bienvenido a Bayser Honduras</h1>
                &nbsp;
                <h2>Iniciar Sesión</h2>
                     <input name="returnto" value="{{returnto}}" type="hidden" />
                     <input name="tocken" value="{{tocken}}" type="hidden"/>
                 <div class="contenedor">
                 
                     
                     <div class="input-contenedor">
                     <i class="fas fa-envelope icon"></i>
                     <input type="text" name="txtEmail" id="txtEmail" placeholder="Correo Electrónico" value="{{txtEmail}}">
                     
                     </div>
                     
                     <div class="input-contenedor">
                     <i class="fas fa-key icon"></i>
                     <input type="password" name="txtPswd" id="txtPswd" placeholder="Contraseña" value=>
                     </div> 

                    <div>
                     <input type="submit" id="btnSend" value="Iniciar Sesión" class="button">
                     &nbsp;
                     <p>¿No tiene cuenta? <a class="link" href="index.php?page=registrarsebayser">Regístrese</a></>
                    </div>

                 {{if showerrors}}
        <div class="alert alert-danger">
          <ul style="margin-bottom:1em !important;">
            {{foreach errors}}
              <li>
                {{this}}
              </li>
            {{endfor errors}}
          </ul>
        </div>
    {{endif showerrors}}
        </form>
        </div>
    </section>

    <script>
  $().ready(
    function(){
      $("#btnSend").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $("#formLogin").submit();
        });
    }
    );
</script>
