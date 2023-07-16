<!DOCTYPE html>
<html>
<head>
<%@page import="java.sql.*"%>
<link href="style.css"  type="text/css" />
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/programacionproyec","root","");
    Statement dbstatement = dbconect.createStatement();
    
    String user=request.getParameter("user");
    String apellido=request.getParameter("apellido");
    String edad=request.getParameter("edad");
    String contrasena=request.getParameter("contrasena");
    
    String insertarsql ="INSERT INTO Usuario (Nombre,Apellido,Edad,Contrasena) VALUES ('"+user+"','"+apellido+"','"+edad+"','"+contrasena+"')";
    dbstatement.executeUpdate(insertarsql);
    out.print("La informacion fue enviada, Muchas Gracias ");
    %>
    <br> <br>
    <footer>
    <p><a href="Login.jsp">Login</a>
    </footer>
</body>
</html>