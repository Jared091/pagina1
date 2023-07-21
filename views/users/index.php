<!-- Incluimos un codigo php  -->
<?php
include __DIR__ . '/../../layout/menu.php';
include __DIR__ . '/../../layout/header.php';
?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">VISTA DE PSICOLOGOS</h1>
        <a href="" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
        class="fas fa-plus fa-sm text-white-50"></i> Agregar psicologos</a>
        </div>

    <!-- Content Row -->
    <div class="row">

<div class="row col">

<div class="card-header">
    <h6 class="m-0 font-weight-bold text-primary">Lista de psicologos</h6>
</div>
<div class="card-body">
    <div >
        <table class="table table-bordered" id="dataTable" width="200%" cellspacing=""10>
        <thead>
                <tr>
                    <th>ID_Usuarios</th>
                    <th>ID_Tu1</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Genero</th>
                    <th>Telefono</th>
                    <th>Dirección</th>
                    <th>Correo electronico</th>
                    <th>Contraseña</th>

                    <th>Operaciones</th>
                </tr>
            </thead>
            
            <tbody>
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>Leonardo</td>
                    <td>Hernandez Maqueda</td>
                    <td>Masculino</td>
                    <td>7293001234</td>
                    <td>5 de mayo</td>
                    <td>leo_123@gmail.com</td>
                    <td>Loleoleo2512</td>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>2</td>
                    <td>1</td>
                    <td>Jared</td>
                    <td>García López</td>
                    <td>Masculino</td>
                    <td>7223456723</td>
                    <td>San jeronimo Chicahualco</td>
                    <td>jared_123@gmail.com</td>
                    <td>halohalo55</td>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>3</td>
                    <td>1</td>
                    <td>Anayeli</td>
                    <td>Flores Flores</td>
                    <td>Femenino</td>
                    <td>7293001234</td>
                    <td>5 de mayo</td>
                    <td>leo_123@gmail.com</td>
                    <td>Loleoleo2512</td>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>4</td>
                    <td>1</td>
                    <td>Nayla</td>
                    <td>Lopez Piña</td>
                    <td>Femenino</td>
                    <td>7293001234</td>
                    <td>5 de mayo</td>
                    <td>leo_123@gmail.com</td>
                    <td>Loleoleo2512</td>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
                <tr>
                <tr>
                    <td>5</td>
                    <td>1</td>
                    <td>Rene</td>
                    <td>Garcia Perdomo</td>
                    <td>Masculino</td>
                    <td>7293901234</td>
                    <td>Hidalgo 5</td>
                    <td>rene_123@gmail.com</td>
                    <td>Loleoleo2512</td>
                    <td><button class="bi bi-eye-fill">ver</button><button class="bi bi-pencil">editar</button><button class="bi bi-trash">eliminar</button></td>
                </tr>
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