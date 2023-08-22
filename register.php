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

// Consulta para insertar el usuario en la base de datos
$sql = "INSERT INTO Usuarios (nombre, contraseña, rol) VALUES ('$usuario', '$contraseña', '$rol')";

if ($conn->query($sql) === TRUE) {
    echo "Registro exitoso. <a href='login.html'>Iniciar sesión</a>";
} else {
    echo "Error en el registro: " . $conn->error;
}

$conn->close();
?>

