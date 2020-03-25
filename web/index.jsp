
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }
            #map {
                height: 500px;
                width: 500px;
            }
        </style>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyAVQbfwUWqX2oBISWZ-yyoPX6WuEj9VQvo"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Sapito Games</title>
    </head>
    <body>
        <script>

            function initialize() {
                var myLatLng = {lat: 19.702909, lng: -98.986838};
                var mapOptions = {
                    zoom: 16,
                    center: myLatLng
                }

                var map = new google.maps.Map(document.getElementById('map'), mapOptions);

                var marker = new google.maps.Marker({
                    position: myLatLng,
                    map: map,
                    title: '',
                    icon: href = 'img/1.jfif'
                });
            }

            google.maps.event.addDomListener(window, 'load', initialize);

        </script>
        <header class="container">
            <div class="row">
                <div class="col-xs-6 col-md-6"><a href="LoginE.jsp"><img src="img/xd.png" style="width:320px; height:250px;"></a></div>
                <div class="col-xs-3 col-md-3"><br><a href="Cliente.jsp"><input type="button" value="Registrarse"></a></div>
                <div class="col-xs-3 col-md-3"><br><a href="Login.jsp"><input type="button" value="Iniciar sesion"></a> </div> 
            </div>
        </header>
        <section class="container">
            <div class="row">
                <div class="col-xs-5 col-md-5"><font size=5><br>Sapito Games <br>
                    <br>Sapito Games es la mejor pagina para comprar tus consolas favoritas 
                    <br>
                    <br>En el mapa del lado derecho podras ver la ubicacion de nuestra tienda fisica.
                       
                    </font><br>


                    <br>
                </div>
                <div class="col-xs-7 col-md-7" id="map"><br><br>     </div> </div>
            <div class="row"><br>
                <div class="col-xs-4 col-md-4" ><br><font size=5> Las mejores consolas <br></font>
                    <a><img src="img/n64.png" style="width:320px; height:220px;"></a></div>
                <div class="col-xs-4 col-md-4"><br><font size=5> Los mejores precios <br></font>
                     <a><img src="img/money.png" style="width:320px; height:220px;"></a></div>
                <div class="col-xs-4 col-md-4"><br> <font size=5 > Fiabilidad <br></font>
                     <a><img src="img/ki.png" style="width:320px; height:220px;"></a></div>
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
