<!-- Incluimos un codigo php  -->
<?php
include __DIR__ . '/../../layout/menu.php';
include __DIR__ . '/../../layout/header.php';
?>
<!-- Begin Page Content -->
<div class="container">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">VISTAS DE CITAS</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-plus fa-sm text-white-50"></i> Agregar Cita</a>
    </div>



    <!-- Content Row -->
    <div class="row">

    <div class="row col">
    
    <div class="card-header">
        <h6 class="m-0 font-weight-bold text-primary">Lista de citas</h6>
    </div>
<div class="card-body">
        <div >
            <br>
            <table class="table table-bordered" id="dataTable" width="200%" cellspacing=""10>
            <thead>
                <tr>
                    <th>ID_Citas</th>
                    <th>Fecha_cita</th>
                    <th>Hora inicio</th>
                    <th>Hora final</th>
                    <th>Operaciones</th>
                </tr>
            </thead>
            
            <tbody>
                <tr>
                    <td>1</td>
                    <td>2023-02-20</td>
                    <th>10:00</th>
                    <th>11:00</th>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>2</td>
                    <td>2023-03-15</td>
                    <th>9:00</th>
                    <th>10:00</th>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>3</td>
                    <td>2023-02-30</td>
                    <th>12:00</th>
                    <th>13:00</th>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>4</td>
                    <td>2023-04-25</td>
                    <th>15:00</th>
                    <th>16:00</th>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>                </tr>
                <tr>
                <tr>
                    <td>5</td>
                    <td>2023-04-10</td>
                    <th>8:00</th>
                    <th>9:00</th>
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