<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root"; // Nombre de usuario de la base de datos en XAMPP (por defecto es "root")
$password = ""; // Contraseña de la base de datos en XAMPP (por defecto no tiene contraseña)
$dbname = "tienda";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Error de conexión a la base de datos: " . $conn->connect_error);
}

// Obtener datos del formulario
$usuario = $_POST['username'];
$contraseña = $_POST['password'];
$rol = $_POST['role'];

// ...

// Consulta para validar el usuario y obtener el rol
$sql = "SELECT id_usuario, nombre FROM Usuarios WHERE nombre = '$usuario' AND contraseña = '$contraseña' AND rol_id = (SELECT id_rol FROM Roles WHERE nombre_rol = '$rol')";

$resultado = $conn->query($sql);

if ($resultado !== false) {
    if ($resultado->num_rows > 0) {
        // Inicio de sesión exitoso
        // ...
    } else {
        // Error de inicio de sesión
        echo "Usuario, contraseña o rol incorrectos.";
    }
} else {
    // Error en la consulta SQL
    echo "Error en la consulta: " . $conn->error;
}

// ...


$conn->close();
?>
