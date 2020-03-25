<%@page import="Modelo.LoginE"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    LoginE logine = new LoginE();
    if (request.getParameter("btn") != null) {
        String correo = request.getParameter("txtcorreo");
        String contra = request.getParameter("txtcontra");
        HttpSession sesion = request.getSession();
        logine.setCorreo(correo);
        logine.setContra(contra);
        session.setAttribute("correo", correo);
        if (logine.entrar() == true) {
            response.sendRedirect("registrarconsola.jsp");
        } else {
            response.sendRedirect("Login.jsp");
        }

    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body style="background:black;">

        <header class="container">
            <div class="row">
                <div class="col-xs-6 col-md-6"></div>
                <div class="col-xs-3 col-md-3"></div>
                <div class="col-xs-3 col-md-3"></div> 
            </div>
        </header>
        <section>
            <div class="row">
                <div class="col-xs-12 col-md-12"><br><br><br><center> <img src="img/xd.png" style="width:550px; height:420px;"> </center></div>  
            </div> 
            <div class="row">
                <div class="col-xs-4 col-md-4"></div>
                <div class="col-xs-4 col-md-4">
                    <form action="LoginE.jsp" method="post">
                        <center><label>Correo</label></center><br>
                        <center><input type="text" name="txtcorreo" id="txtcorreo" required></center><br>
                        <center><label>Contraseña</label></center><br>
                        <center><input type="password" name="txtcontra" id="txtcontra" required></center><br><br>
                        <center><input type="submit" name="btn" value="Ingresar">
                            <a href="index.jsp"><input type="button" value="Inicio"><br><br></a></center>
                    </form> 
                </div>
                <div class="col-xs-4 col-md-4"></div>
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
