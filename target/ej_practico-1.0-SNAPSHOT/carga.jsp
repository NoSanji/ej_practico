<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        Integer sucursal = Integer.parseInt(request.getParameter("id_sucursal"));
        
	Class.forName("com.mysql.jdbc.Driver");
	Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/EJ_PRACTICO","root","");
	Statement s = conexion.createStatement();
	String consulta = "SELECT * FROM tb_productos WHERE id_producto=(SELECT max(id_producto) FROM tb_productos)";
	ResultSet listado = s.executeQuery(consulta);
        listado.next();
        Integer producto = listado.getInt("id_producto");
    %>
    <body>
        <form method="get" action="cargar.jsp">
            <h2>Ingrese nombre</h2>
            <input name="nombre">
            <h2>Ingrese descripcion</h2>
            <input name="descripcion">
            <h2>Ingrese costo</h2>
            <input type="number" name="costo">
            <h2>Ingrese Stock</h2>
            <input type="number" name="stock"><br><br>
            <input type="hidden" name="producto" value="<%out.print(producto);%>">
            <input type="hidden" name="sucursal" value="<%out.print(sucursal);%>">
            <input type="submit" value="MANDALE">
        </form>
    </body>
</html>
