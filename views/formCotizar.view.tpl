    <section class="contenidocot">
        <div class="informacion">

        <form action="index.php?page=formCotizar" class="form" method="POST" id="fcot" novalidate>
           <div class="form-header">
               <h1 class="form-title">C<span>otizació</span>n</h1>
           </div> 
                <!--Nombre Completo  -->
                <label for="seleccionproducto" class="form-subtitle">Datos Personales</label>

                <label for="clientename" class="form-label">Nombre Completo:</label>
                <input type="text" class="form-input" name="clientename" id="clientename" maxlength="35" minlength="5" placeholder="Escriba su Nombre" required/>
                <span class="errorClass hidden" id="errornom"></span> 

                <!-- Correo Electronico -->
                <label for="clientecorreo" class="form-label">Correo Electrónico:</label>
                <input type="email" class="form-input" name="clientecorreo" id="clientecorreo" maxlength="30" minlength="12" placeholder="abcd@gmail.com" autocapitalize="none" required> 
                <span class="errorClass hidden" id="errorcorre"></span>    

                <!-- Producto -->
                <label for="seleccionproducto" class="form-subtitle">Seleccione un Producto:</label>
                    
                    <!-- Basculas de Precision -->
                    <div class="seleccion">
                    <label for="producto1" class="form-label">Basculas de Precision</label>
                        <select class="form_select" name="producto1" id="producto1" >
                            <option value="0"select>Seleccione</option>
                            <option value="Exp">Explorer de Precisión</option>
                            <option value="Expa">Explorer de Precision alta calidad</option>
                            <option value="Ap">Adventurer de precisión</option>
                            <option value="PP">Pioneer Precisión</option>
                            <option value="Spp">Serie PR de precisión</option>
                        </select>

                    <!-- Unidades de Producto -->
                    <label for="cantidadp"  class="form-uni">Unidades
                            <input type="number" class="form-extra" name="cantidadp" id="cantidadp" value="1" min="1" max="30" step="1"/></label>

                    </div>


                    <!-- Basculas Industriales -->
                    <div class="seleccion">
                    <label for="producto2" class="form-label">Basculas Industriales</label>
                        <select class="form_select" name="producto2" id="producto2">
                            <option value="0"select>Seleccione</option>
                            <option value="Svx">Serie VX</option>
                            <option value="Svn">Serie VN</option>
                            <option value="Psvn">Plataforma serie VN</option>
                            <option value="D3l">Defender 3000 Lavable</option>
                            <option value="D3lp">Defender 3000 low profile</option>
                            <option value="D3">Defender 3000</option>
                        </select>

                    <!-- Unidades -->
                    <label for="cantidadp" class="form-uni">Unidades
                        <input class="form-extra" type="number" name="cantidadp" id="cantidadp" value="1" min="1" max="30" step="1"/></label>
                    
                    </div>


                    <!-- Basculas Comerciales -->
                    <div class="seleccion">
                        <label for="producto3" class="form-label">Basculas Comerciales </label>
                        <select class="form_select" name="producto3" id="producto3">
                            <option value="0"select>Seleccione</option>
                            <option value="Av7">Aviator 7000</option>
                            <option value="Av2">Aviator 2000</option>
                        </select>
                    
                    <!-- Unidades -->
                    <label for="cantidadp" class="form-uni">Unidades
                        <input class="form-extra"type="number" name="cantidadp" id="cantidadp" value="1" min="1" max="30" step="1"/></label>

                    </div>

                    <!-- Especificacion -->
                    <label for="detallec" class="form-label">Especificacion</label>
                    <textarea name="detallec" class="form-textarea" id="detallec" cols="20" rows="8"></textarea>

                    <input type="submit" class="btn-submit" value="Cotizar">
        </form>
        </div>
    </section>