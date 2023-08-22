[1mdiff --git a/register.html b/register.html[m
[1mnew file mode 100644[m
[1mindex 0000000..cb988af[m
[1m--- /dev/null[m
[1m+++ b/register.html[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html>[m
[32m+[m[32m<head>[m
[32m+[m[32m  <meta charset="UTF-8">[m
[32m+[m[32m  <title>Registro</title>[m
[32m+[m[32m  <link rel="stylesheet" type="text/css" href="styles.css">[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m[32m  <h2>Registro</h2>[m
[32m+[m[32m  <form action="register.php" method="POST">[m
[32m+[m[32m    <label for="username">Usuario:</label>[m
[32m+[m[32m    <input type="text" id="username" name="username" required><br>[m
[32m+[m[41m    [m
[32m+[m[32m    <label for="password">Contraseña:</label>[m
[32m+[m[32m    <input type="password" id="password" name="password" required><br>[m
[32m+[m
[32m+[m[32m    <label for="password">confirmar contraseña:</label>[m
[32m+[m[32m    <input type="password" id="password" name="password" required><br>[m
[32m+[m[41m    [m
[32m+[m[32m    <label for="role">Rol:</label>[m
[32m+[m[32m    <select id="role" name="role" required>[m
[32m+[m[32m      <option value="administrador">Administrador</option>[m
[32m+[m[32m      <option value="empleado">Empleado</option>[m
[32m+[m[32m    </select><br>[m
[32m+[m[41m    [m
[32m+[m[32m    <input type="submit" value="Registrarse">[m
[32m+[m[32m  </form>[m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/register.php b/register.php[m
[1mnew file mode 100644[m
[1mindex 0000000..3d277db[m
[1m--- /dev/null[m
[1m+++ b/register.php[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32m<?php[m
[32m+[m[32m// Conexión a la base de datos[m
[32m+[m[32m$servername = "localhost";[m
[32m+[m[32m$username = "root"; // Nombre de usuario de la base de datos en XAMPP (por defecto es "root")[m
[32m+[m[32m$password = ""; // Contraseña de la base de datos en XAMPP (por defecto no tiene contraseña)[m
[32m+[m[32m$dbname = "tienda";[m
[32m+[m
[32m+[m[32m$conn = new mysqli($servername, $username, $password, $dbname);[m
[32m+[m[32mif ($conn->connect_error) {[m
[32m+[m[32m    die("Error de conexión a la base de datos: " . $conn->connect_error);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Obtener datos del formulario[m
[32m+[m[32m$usuario = $_POST['username'];[m
[32m+[m[32m$contraseña = $_POST['password'];[m
[32m+[m[32m$rol = $_POST['role'];[m
[32m+[m
[32m+[m[32m// Consulta para insertar el usuario en la base de datos[m
[32m+[m[32m$sql = "INSERT INTO Usuarios (nombre, contraseña, rol) VALUES ('$usuario', '$contraseña', '$rol')";[m
[32m+[m
[32m+[m[32mif ($conn->query($sql) === TRUE) {[m
[32m+[m[32m    echo "Registro exitoso. <a href='login.html'>Iniciar sesión</a>";[m
[32m+[m[32m} else {[m
[32m+[m[32m    echo "Error en el registro: " . $conn->error;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m$conn->close();[m
[32m+[m[32m?>[m
[32m+[m
