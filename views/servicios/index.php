<!-- Incluimos un codigo php  -->
<?php
include __DIR__ . '/../../layout/menu.php';
include __DIR__ . '/../../layout/header.php';
?>
<!-- Begin Page Content -->
<div class="container">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">VISTAS DE SERVICIOS</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-plus fa-sm text-white-50"></i> Agregar Servicio</a>
    </div>



    <!-- Content Row -->
    <div class="row">

    <div class="row col">
    
    <div class="card-header">
        <h6 class="m-0 font-weight-bold text-primary">Lista de servicios</h6>
    </div>
<div class="card-body">
        <div >
            <br>
            <table class="table table-bordered" id="dataTable" width="200%" cellspacing=""10>
            <thead>
                <tr>
                    <th>ID_Servicios</th>
                    <th>Nombre</th>
                    <th>Costos</th>
                    <th>Operaciones</th>
                </tr>
            </thead>
            
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Psicoanalítica</td>
                    <th class="bi bi-currency-dollar">600</th>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>2</td>
                    <td>Cognitivo-conductua</td>
                    <th class="bi bi-currency-dollar">700</th>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>3</td>
                    <td>En parejas</td>
                    <th class="bi bi-currency-dollar">800</th>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>4</td>
                    <td>Individual</td>
                    <th class="bi bi-currency-dollar">900</th>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>                </tr>
                <tr>
                <tr>
                    <td>5</td>
                    <td>Gestalt</td>
                    <th class="bi bi-currency-dollar">1000</th>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>                </tr>
                <tr>                                        
            </tbody>
            </table>
        </div>
    </div>


</div>
</div>

<div>
<!-- /.container-fluid -->
<?php
include __DIR__ . '/../../layout/footer.php';
?>

</div>