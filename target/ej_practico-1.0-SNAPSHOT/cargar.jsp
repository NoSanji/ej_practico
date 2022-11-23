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
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ej_practico"
            ,"root", "");
            Statement s = conexion.createStatement();
            request.setCharacterEncoding("UTF-8");
            String insercion = "INSERT INTO `tb_productos`(`pd_nombre`,`pd_descrip`,`pd_precio`) VALUES('"+request.getParameter("nombre")+"','"+request.getParameter("descripcion")+"',"+request.getParameter("costo")+");";
            s.execute(insercion);
            s.execute("INSERT INTO `tb_productos_sucursales`(`id_sucursal`,`id_producto`,`ps_stock`) VALUES("+request.getParameter("producto")+","+request.getParameter("sucursal")+","+request.getParameter("stock")+");");
            conexion.close();
        
        %>
    </body>
</html>
