<%@page import="Modelo.ConsultaP"%>
<%@page import="Modelo.pedidos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<%
    ConsultaP luis = new ConsultaP();
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

            </div>
        </header>
        <section class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12"><br><center><img src="img/xd.png" style="width:420px; height:220px;"></center></div>
            </div>
            <div class="row">
                <div class="col-xs-3 col-md-3"><br><h2>Nombre de pedido</h2></div>
                <form>
                    <div class="col-xs-4.5 col-md-4.5"><br><input type="text" name="txt" id="txt" class="form-control"></div>
                    <div class="col-xs-4.5 col-md-4.5"><br><input type="submit" value="Buscar" name="btn" id="btn" class="form-control"></div> 
            </div>
            <div class="row">

                <div class="col-xs-9 col-md-9"><br>


                    <table align="center" width="980" border="1" Style=" border-color:green;" >
                        <tr>
                            <th>Nombre</th>
                            <th>Cantidad</th>
                            <th>marca</th>
                            <th>correo</th>
                        </tr>
                        <tr>
                            <td><%=luis.getNombre()%></td>
                            <td><%=luis.getCantidad()%></td>
                            <td><%=luis.getMarca()%></td>
                            <td><%=luis.getCorreou()%></td>



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
    </form>
</body>
</html>

