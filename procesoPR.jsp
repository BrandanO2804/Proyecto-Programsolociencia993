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
    
    String nombrepr=request.getParameter("nombrepr");
    String cedulapr=request.getParameter("cedulapr");
    String[] op=request.getParameterValues("op");
    String opc ="";
    	for(int i=0; i<op.length;i++)
    		opc=(opc+","+op[i]+"");
    
    String insertarsql ="INSERT INTO programacion  (Nombre,Cedula,FechadeInicio) VALUES ('"+nombrepr+"','"+cedulapr+"','"+opc+"')";
    dbstatement.executeUpdate(insertarsql);
    out.print("La informacion fue enviada, Muchas Gracias ");
    %>
    <br> <br>
    <footer>
    <p><a href=sHOME.html>Home</a>
    </footer>
</body>
</html>