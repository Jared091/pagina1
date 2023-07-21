<?php
// Establecer la conexión con la base de datos
$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "proyp1";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Obtener el término de búsqueda enviado por el formulario
$searchTerm = $_POST['search'];

// Construir la consulta SQL para buscar registros que coincidan con el término de búsqueda
$sql = "SELECT * FROM productos WHERE Descripcion LIKE '%$searchTerm%'";

// Ejecutar la consulta
$result = $conn->query($sql);


// Verificar si se encontraron resultados

if ($result->num_rows > 0) {
    // Iterar sobre los resultados y mostrarlos
    while ($row = $result->fetch_assoc()) {
        echo 'result"' . $row['Descripcion'] . '" alt="no carga">';
    }
} else {
    echo "No se encontraron resultados.";
}

// Cerrar la conexión

$conn->close();

?>
