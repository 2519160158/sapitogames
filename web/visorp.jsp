<%-- 
    Document   : visorp
    Created on : 7/11/2019, 09:27:06 PM
    Author     : jair escuela
--%>

<%@page import="Modelo.pedidos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    pedidos luis = new pedidos();
    if (request.getParameter("btn") != null) {
        String nombre = request.getParameter("txt");
        luis.setNombre(nombre);
        luis.busqueda();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="container">
            <div class="row">
                <div class="col-xs-6 col-md-6"></div>
                <div class="col-xs-3 col-md-3"><br></div>
                <div class="col-xs-3 col-md-3"><br> </div> 
            </div>
        </header>
        <section class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12"><br><center><img src="img/logoh.png" style="width:420px; height:220px;"></center></div>
            </div>
            <div class="row">
                <div class="col-xs-3 col-md-3"><br><h2>Opciones</h2></div>
                <div class="col-xs-3 col-md-3"><br><h2>Nombre de pedido</h2></div>
                <div class="col-xs-3 col-md-3"><br><input type="text" name="txt" id="txt" class="form-control"></div>
                <div class="col-xs-3 col-md-3"><br><input type="submit" value="Buscar" name="btn" id="btn" class="form-control"></div> 
            </div>
            <div class="row">
                <div class="col-xs-3 col-md-3"><br><br><h3><a href="visor.jsp">Productos</a></h3><br><br><h3><a href="visorp.jsp">Pedidos</a></h3><br><br><h3><a href="visore.jsp">Empleados</a></h3><br><br><h3><a href="Empleado.jsp">Agregar Empleado</a></h3><br><br><h3><a href="Producto.jsp">Agregar Producto</a></h3></div>
                <div class="col-xs-9 col-md-9"><br>
                    <table align="center" width="980" border="1" Style=" border-color:green;" >
                        <tr>
                            <th>Nombre</th>
                            <th>Cantidad</th>
                            <th>Fecha</th>
                        </tr>
                        <tr>
                            <td><%=luis.getNombre()%></td>
                            <td><%=luis.getCantidad()%></td>
                           
                        </tr>
                    </table>
                </div>
            </div>
        </section>
        <footer class="container">
            <div class="row" style="background:green;">
                <div class="col-xs-2 col-md-2"><br><b>Derechos reservados</b> </div>
                <div class="col-xs-2 col-md-2"><br><b>Heisenberg</b></div>
                <div class="col-xs-2 col-md-2"><br><b>Proyecto UTTEC</b></div>
                <div class="col-xs-1 col-md-1"></div>
            </div>
        </footer> 
    </body>
</html>

