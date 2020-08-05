 <section class="contenido">

            <div class="informacion">

                <form class="form" action="index.php?page=formRecomendar" method="POST" id="fcot" novalidate>
                    <div class="form-header">
                        <h1 class="form-title">E<span>ncuest</span>a</h1>
                    </div>

                    <!-- Nombre del Cliente -->
                    <label class="form-label" for="clientename">Nombre Completo:</label>
                    <input class="form-input" type="text" name="clientename" id="clientename" maxlength="35"
                        minlength="5" placeholder="Ingrese su Nombre" required />
                    <span class="errorClass hidden" id="errornom"></span>

                    <!-- Correo del cliente -->
                    <label class="form-label" for="clientecorreo">Correo Electrónico:</label>
                    <input class="form-input" type="email" name="clientecorreo" id="clientecorreo" maxlength="30"
                        minlength="12" placeholder="abcd@gmail.com" autocapitalize="none" required>
                    <span class="errorClass hidden" id="errorcorre"></span>

                    <label for="seleccionproducto" class="form-subtitle">Encuesta de Satisfaccion:</label>


                    <label class="form-label" for="">¿Como clasificaría la pagina de Bayser Honduras?</label>
                    <div id="satisfaccion" class="satisfaccion">

                        <fieldset class="col-12">
                            <input class="form-input" type="radio" id="satisfaccion" name="satisfaccion" value="1"
                                checked>
                            <label class="form-label rdb">
                                Excelente</label>
                        </fieldset>
                        <fieldset class="col-12">
                            <input class="form-input" type="radio" id="satisfaccion" name="satisfaccion" value="2">
                            <label class="form-label rdb">Satisfactorio</label>
                        </fieldset>
                        <fieldset class="col-12">
                            <input class="form-input" type="radio" id="satisfaccion" name="satisfaccion" value="3">
                            <label class="form-label rdb">Bueno</label>
                        </fieldset>
                        <fieldset class="col-12">
                            <input class="form-input" type="radio" id="satisfaccion" name="satisfaccion" value="4">
                            <label class="form-label rdb">Regular</label>
                        </fieldset>
                        <fieldset class="col-12">
                            <input class="form-input rdb" type="radio" id="satisfaccion" name="satisfaccion" value="5">
                            <label class="form-label">Necesita
                                Mejorar</label>
                        </fieldset>
                    </div>

                    <label class="form-label" for="detallec">Comentarios</label>
                    <textarea class="form-textarea" name="detallec" id="detallec" cols="80" rows="10"></textarea>

                    <input type="submit" class="btn-submit" value="Enviar">

                </form>
            </div>
        </section>