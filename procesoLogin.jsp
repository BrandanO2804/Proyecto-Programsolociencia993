<!DOCTYPE html>
<html>
<head>
<%@page import="java.sql.*"%>
<link href="style.css"  type="text/css" />
</head>
<body>
<%
String user=request.getParameter("user");
String contrasena=request.getParameter("contrasena");
Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/programacionproyec","root","");
    try
    {
    	PreparedStatement consultaLg  = dbconect.prepareStatement("SELECT *FROM USUARIO WHERE Nombre=? AND Contrasena=? ");
    	consultaLg.setString(1,user);
    	consultaLg.setString(2,contrasena);
    	
    	ResultSet resultado = consultaLg.executeQuery();
    	
    	if(resultado.next())
    		response.sendRedirect("Home.html");
    	
    	else
    	response.sendRedirect("Login.jsp?error=credenciales incorrectas");

    }catch (Exception e)
    {
    	out.println("--ERROR--<br>");
    	out.println("--Consulta Invalida--");
    }
    %>
    <br> <br>
    <footer>
    </footer>
</body>
</html>