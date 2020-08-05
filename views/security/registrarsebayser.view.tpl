<section class="contenidoreg">
        <div class="informacion">
  {{if haserrores}}
    <ul class="alert alert-danger depth-1 m-padding" style="list-style:none;">
      {{foreach errores}}
        <li>
          {{this}}
        </li>
      {{endfor errores}}
    </ul>
  {{endif haserrores}}
 <form action="index.php?page=registrarsebayser" class="formulario" method="POST" id="fcot" novalidate>
    <h1>Regístrese Aquí</h1>
    <input type="hidden" name="mode" value="{{mode}}"  />
    <input type="hidden" name="tocken" value="{{tocken}}"  />
    <input type="hidden" name="usrcod" value="{{usrcod}}"  />
    <div class=".contenedorreg">

      <div class="input-contenedor">
        <i class="fas fa-user icon"></i>
        <input {{readonly}} type="text" name="txtName" id="txtName"placeholder="Nombre Completo" value="{{username}}"">
      </div>

      <div class="input-contenedor">
        <i class="fas fa-envelope icon"></i>
        <input {{readonly}} type="text" placeholder="Correo Electrónico" name="txtCorreo" id="txtCorreo" value="{{usermail}}">      
      </div>
      
    
      <div class="input-contenedor">
          <i class="fas fa-key icon"></i>
          <input {{readonly}} type="password" placeholder="Contraseña" name="txtPswd" id="txtPswd">
      </div> 
        

         <div class="input-contenedor">
              <i class="fas fa-unlock icon"></i>
              <input type="password" placeholder=" Confirmar Contraseña" id=txtConfirmar name="txtConfirmar">
          </div>

            
              <input type="submit" value="Registrarse" class="button" id="btnConfirm">
              
            <p>Al registrarte, aceptas nuestras Condiciones de uso y Política de privacidad de Bayser Honduras.</p>
            <p>¿Ya tienes una cuenta?<a class="link" href="index.php?page=loginbayser">Iniciar Sesión</a></p>      
      </div>
    </form>
   </div>
</section> 
<script>
  $().ready(function(){
      $("#btnConfirm").click(function(e){
        e.preventDefault();
        e.stopPropagation();
        document.forms[0].submit();
        });
      {{endifnot isinsert}}
    });
</script>
