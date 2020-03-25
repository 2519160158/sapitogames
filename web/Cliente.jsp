<%@page import="Modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cliente ven = new Cliente();
    if (request.getParameter("btn") != null) {
        String nombre = request.getParameter("txtnombre");
        String apellido = request.getParameter("txtapellido");
        String correo = request.getParameter("txtcorreo");
        String contra = request.getParameter("txtcontra");
        ven.setNombre(nombre);
        ven.setApellido(apellido);
        ven.setCorreo(correo);
        ven.setContra(contra);
        ven.addCliente();
    }

    if (request.getParameter("btnb") != null) {
        String nombre = request.getParameter("txtnom");
        ven.setNombre(nombre);
        ven.busquedapro();

    }
%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Cliente</title>
    </head>
    <body onload="suma();">
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v5.0"></script>
        <header class="container">
            <div class="row">
                <div class="col-xs-6 col-md-6"> <img src="img/xd.png" style="width:320px; height:250px;"> </div>
                <div class="col-xs-3 col-md-3"><br><a href="index.jsp"><input type="button" value="Inicio"></a></div>
                <div class="col-xs-3 col-md-3"><br><a href="Login.jsp"><input type="button" value="Iniciar sesion"></a> </div> 
            </div>
        </header>
        <section class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12"><br><br><img src="img/b.png"  style="width:1100px; height:500px;"></div>
            </div>
            <div class="row">
                <div class="col-xs-4 col-md-4"><br>
                    <h1>cliente</h1><br>
                    <label>Nombre</label><br>
                    <label>Apellido</label><br>
                    <label>Correo</label><br>
                    <label>Contraseña</label><br>
                </div>
                <div class="col-xs-4 col-md-4"><br><br><br><br>
                    <form action="Cliente.jsp" method="post">
                        <br>
                        <input type="text" name="txtnombre"><br>
                        <input type="text" name="txtapellido"><br>
                        <input type="email" name="txtcorreo"><br>
                        <input type="password" name="txtcontra"><br>
                        </div>
                <div class="col-xs-4 col-md-4"><br><br><br><br><br><div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="100%" data-numposts="5"></div></div>
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
