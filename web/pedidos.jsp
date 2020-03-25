<%@page import="Modelo.pedidos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    pedidos ven = new pedidos();
    if (request.getParameter("btn") != null) {
        String nombre = request.getParameter("txtnombre");
        String marca = request.getParameter("txtmarca");
        String cantidad = request.getParameter("txtcantidad");
        String correou = request.getParameter("txtcorreou");
        ven.setNombre(nombre);
        ven.setMarca(marca);
        ven.setCantidad(cantidad);
        ven.setCorreo(correou);
        ven.addEntrega();
    }


%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Registro Consola</title>
    </head>
    <body onload="suma();">
        <div id="fb-root"></div>

        <header class="container">
            <div class="row">
                <div class="col-xs-6 col-md-6"> <img src="img/xd.png" style="width:320px; height:250px;"> </div>
                <div class="col-xs-3 col-md-3"><br><a href="index.jsp"><input type="button" value="Inicio"></a></div>
                <div class="col-xs-3 col-md-3"><br><a href="Login.jsp"><input type="button" value="Cerrar sesion"></a> </div> 
            </div>
        </header>
        <section class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12"><br><br><img src="img/b.png"  style="width:1100px; height:500px;"></div>
            </div>
            <div class="row">
                <div class="col-xs-4 col-md-4"><br>
                    <h1>Consola</h1><br>
                    <label>Nombre</label><br>
                    <label>Marca</label><br>

                    <label>Cantidad</label><br>
                    <label>Correo</label><br>
                </div>
                <div class="col-xs-4 col-md-4"><br><br><br><br>
                    <form action="pedidos.jsp" method="post">
                        <br>
                        <input type="text" name="txtnombre"><br>
                        <input type="text" name="txtmarca"><br>
                        <input type="number" name="txtcantidad"><br>
                        <input type="email" name="txtcorreou"><br>

                        </div>

                        </div>
                        <div class="row">
                            <input type="submit" name="btn" value="Guardar">
                        </div> 

                        </section>
                        <footer class="container">
                            <div class="row" style="background:green;">
                                <div class="col-xs-2 col-md-2"><br><b>Derechos reservados</b> </div>
                                <div class="col-xs-2 col-md-2"><br><b>Sapito Games</b></div>
                                <div class="col-xs-2 col-md-2"><br><b>Proyecto UTTEC</b></div>
                                <div class="col-xs-1 col-md-1"></div>
                            </div>
                        </footer>  
                        </body>
                        </html>
