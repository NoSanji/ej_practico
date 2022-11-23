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
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ej_practico","root", "");
            Statement s = conexion.createStatement();
            request.setCharacterEncoding("UTF-8");
            String insercion = "UPDATE tb_productos_sucursales SET ps_stock= 0 WHERE id_sucursal="+request.getParameter("sucursal")+" AND id_producto="+request.getParameter("id")+";";
            s.execute(insercion);
            conexion.close();
        
        %>
    </body>
</html>
