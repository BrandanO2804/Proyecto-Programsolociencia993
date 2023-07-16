<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles.css">
    <link rel="icon" href="./logo_b-removebg-preview.png">
    <title>Login</title>
  </head>

<body id="form">
  <header>
    <div class="banner">
      <img src="./MEDIA/Logo2.png" alt="image" id="logo">
      
      <h1 id="texto-banner">
      SOLO CIENCIA
      </h1>
      <div> 
          <a href="https://www.google.com" style="background-color: #0C3D59;"><img src="./MEDIA/busqueda.png" alt="iconobusqueda" style="width: 45px;"></a>
          <a href="https://www.instagram.com/solocienciaoficial/" style="background-color: #0C3D59;"><img src="./MEDIA/ig.png" alt="instagram" style="width: 45px;"></a>
          <a href="https://twitter.com/sciencia993" style="background-color: #0C3D59;"><img src="./MEDIA/tw.png" alt="twitter" style="width: 50px;"></a>
      </div>
  </div>
    <h2>
      Bienvenido a Solo Ciencia
    </h2>

    </div>
  <p>
    <center>
    Por favor, inicie sesion para acceder
    </center>
  </p>
  </header>

<form action="procesoLogin.jsp" method="post">
    <fieldset> 
      <legend>Informacion personal</legend>
   <label for="user">Nombre:</label><br>
    <input type="text" id="user"name="user">
    <br>
    <label for="contrasena">Contrasena:</label><br>
    <input type="password" id="contrasena"name="contrasena">
    <br>
    <%String error =request.getParameter("error");
    if (error !=null){
    	out.println("<p>"+"el usuario o contraseña no son correctas o no existen"+"</p>");
    }
    %>
    </fieldset>
    <p><input type="submit" value="Enviar"></p>
</form>
  <footer>
<a href="registroU.html"> ¿sin cuenta? creela aqui</a>
 </footer>
</body>
</html>