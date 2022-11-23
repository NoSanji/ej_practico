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
        <div id="main-container">
        <table>
            <thead>
                <tr>
                    <th>Nombre</th><th>Descripcion</th><th>Stock</th><th>Costo</th>
                </tr>
            </thead>
            
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ej_practico","root", "");
                    Statement s = conexion.createStatement();
                    request.setCharacterEncoding("UTF-8");
                    String consulta = "SELECT * FROM tb_productos, tb_productos_sucursales";
                    ResultSet listado = s.executeQuery(consulta);
                    while(listado.next()){
                        out.println("<tr> <td>" + listado.getString("pd_nombre") + "</td>");
                        out.println("<td>" + listado.getString("pd_descrip") + "</td>");
                        out.println("<td>" + listado.getString("ps_stock") + "</td>");
                        out.println("<td>" + listado.getString("pd_precio") + "</td></tr>");
                    }
                %>
        </table>
        </div>
    </body>
</html>
