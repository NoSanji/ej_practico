<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.Statement"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.Connection"%>
<%@page import= "java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Empresa Basica S.R.L.</h1>
        <div>
          <h2>Sede San Juan</h2>
          <a href="carga.jsp?id_sucursal=1">carga</a>
          <a href="baja.jsp?id_sucursal=1">baja</a>
          <a href="muestra.jsp?id_sucursal=1">muestra</a>
        </div>
        <div>
          <h2>Sede San Junin</h2>
          <a href="carga.jsp?id_sucursal=2">carga</a>
          <a href="baja.jsp?id_sucursal=2">baja</a>
          <a href="muestra.jsp?id_sucursal=2">muestra</a>
        </div>
        <div>
          <h2>Sede San Justo</h2>
          <a href="carga.jsp?id_sucursal=3">carga</a>
          <a href="baja.jsp?id_sucursal=3">baja</a>
          <a href="muestra.jsp?id_sucursal=3">muestra</a>
        </div>
    </body>
</html>
