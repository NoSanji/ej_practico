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
    %>
    <body>
        <form method="get" action="bajar.jsp">
            <h2>Ingrese ID</h2>
            <input type="number" name="id"><br><br>
            <input type="hidden" name="sucursal" value="<%out.print(sucursal);%>">
            <input type="submit" value="MANDALE">
        </form>
    </body>
</html>
