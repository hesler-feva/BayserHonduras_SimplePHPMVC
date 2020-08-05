<section>
    <header>
        <h1 class="center">Historial de Transacciones</h1>
    </header>

    <main class="row">
        <div class="col-12 col-md-10 col-offset-1 depth-3">
            <table class="full-width bg-white">
                <thead>
                    <tr class="bg-blue"> 
                        <th>ID Factura</th>
                        <th>Fecha Creación</th>
                        <th>Usuario-email</th>
                        <th>Producto</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                        <th>Total</th>
                    </tr>
                </thead>

                <tbody class="hover">
                    {{foreach transacciones}}
                    <tr>
                        <td>{{fctcod}}</td>
                        <td>{{Fecha}}</td>
                        <td>{{useremail}}</td>
                        <td>{{fctDsc}}</td> 
                        <td>{{fctCtd}}</td>
                        <td>{{fctPrc}}</td>
                        <td>{{fctTotal}}</td>
                    </tr>
                    {{endfor transacciones}}
                </tbody>
                
                <tfooter> 
                    <tr style="border-top:1px solid #333;">
                        <td colspan="5" class="bg-blue-grey"></td>
                        <td class="right"><span class="ion-card"><strong> Total Transacciones</strong></span></td>
                        <td>{{total_global}}</td>
                    </tr>
                </tfooter>
            </table>
        </div>
    </main>
</section>
<style>
    body{
        background-image: url(public/imgs/ex-header-background.jpg);
    }
</style>