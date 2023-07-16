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
    
    String nombreqb=request.getParameter("nombreqb");
    String cedulaqb=request.getParameter("cedulaqb");
    String[] op=request.getParameterValues("op");
    String opc ="";
    	for(int i=0; i<op.length;i++)
    		opc=(opc+","+op[i]+"");
    
    String insertarsql ="INSERT INTO quimicaybiologia  (Nombre,Cedula,FechadeInicio) VALUES ('"+nombreqb+"','"+cedulaqb+"','"+opc+"')";
    dbstatement.executeUpdate(insertarsql);
    out.print("La informacion fue enviada, Muchas Gracias ");
    %>
    <br> <br>
    <footer>
    <p><a href=sHOME.html>Home</a>
    </footer>
</body>
</html>