
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Sapito Games</title>
    </head>
    <body>

        <%
            HttpSession sesion = request.getSession();
            String corr = null;
            if (sesion.getAttribute("correo") != null) {
                corr = sesion.getAttribute("correo").toString();

                out.print("<a href='LoginE.jsp?cerrar=true'><h5 style='color:#C4A100;'><center>Cerrar sesión " + corr + "</h5></a></center>");
            } else {
                out.print("<script>location.replace('LoginE.jsp');</script>");
            }
        %>

        <header class="container">
            <div class="row">
                <div class="col-xs-6 col-md-6"><a href="LoginE.jsp"><img src="img/xd.png" style="width:320px; height:250px;"></a></div>
                <div class="col-xs-2 col-md-2"><br><a href="pedidos.jsp"><input type="button" value="Pedido"></a></div>
                <div class="col-xs-2 col-md-2"><br><a href="index.jsp"><input type="button" value="Mis pedidos"></a> </div> 
                <div class="col-xs-2 col-md-2"><br><a href="index.jsp"><input type="button" value="cerrar sesion"></a> </div> 
            </div>
        </header>
        <section class="container">
            <div class="row">
                <br>
                <div class="col-xs-4 col-md-4" ><br><font size=5> PS1 Da click para obtener mas informacion <br></font>
                    <a href="ps1.jsp"><img src="consolas/ps1.png" style="width:320px; height:220px;"></a></div>
                <div class="col-xs-4 col-md-4"><br><font size=5> PS2 Da click para obtener mas informacion <br></font>
                    <a><img src="consolas/ps2.png" style="width:320px; height:220px;"></a></div>
                <div class="col-xs-4 col-md-4"><br> <font size=5 >PS3 Da click para obtener mas informacion <br></font>
                    <a><img src="consolas/ps3.png" style="width:320px; height:220px;"></a></div>


                <br>


                <br>

            </div>
            <div class="row"><br>
                <div class="col-xs-4 col-md-4" ><br><font size=5> Xbox Da click para obtener mas informacion <br></font>
                    <a><img src="consolas/xbox.png" style="width:320px; height:220px;"></a></div>
                <div class="col-xs-4 col-md-4" ><br><font size=5> Xbox 360 Da click para obtener mas informacion <br></font>
                    <a><img src="consolas/Xbox360.png" style="width:320px; height:220px;"></a></div>
                <div class="col-xs-4 col-md-4" ><br><font size=5> Xbox one Da click para obtener mas informacion <br></font>
                    <a><img src="consolas/xboxone.png" style="width:320px; height:220px;"></a></div>
            </div>
        </section>
        <footer class="container">
            <div class="row"  style="background:blue;">
                <div class="col-xs-2 col-md-2"><br><b>Derechos reservados</b> </div>
                <div class="col-xs-2 col-md-2"><br><b>Sapito Games</b></div>
                <div class="col-xs-2 col-md-2"><br><b>Proyecto UTTEC</b></div>
                <div class="col-xs-1 col-md-1"></div>
            </div>
        </footer>

    </body>
</html>
