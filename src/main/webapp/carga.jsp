<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get" action="cargar.jsp">
            <h2>Ingrese nombre</h2>
            <input name="nombre">
            <h2>Ingrese descripcion</h2>
            <input name="descripcion">
            <h2>Ingrese costo</h2>
            <input type="number" name="costo"><br><br>
            <input type="submit" value="MANDALE">
        </form>
    </body>
</html>
