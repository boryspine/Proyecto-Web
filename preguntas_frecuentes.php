<?php
session_start();
require 'funciones.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">

    <title>BROSSTORE</title>


    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/estilos.css">



</head>

<body>


    <nav class="navbar navbar-default navbar-fixed-top $orange-500">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">BROSSTORE</a> &nbsp; &nbsp; &nbsp;
                <a class="navbar-brand" href="preguntas_frecuentes.php">Preguntas Frecuentes </a> &nbsp; &nbsp; &nbsp;
                <a class="navbar-brand" href="tel:+50436171642">Contactanos </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav pull-right">
                    <li>
                        <a href="carrito.php" class="btn">CARRITO <span class="badge">
                                <?php print cantidadPeliculas(); ?>
                            </span></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>



    <div class="container">
        <center>
            <h3>Preguntas mas Frecuentes</h3>
        </center>

        <br>
        <br>

        <h4>Tienes Servicio de envio?</h4>
        <h5> si contamos con servicio envio</h5>
        <br><br>
        <h4>Tiene costo adicional el servicio de envio?</h4>
        <h5> el costo adicional se agrega en compras menores de Lps 500</h5>
        <br><br>
        <h4>Que precio tiene en el envio?</h4>
        <h5> En compras menores a Lps 500.00 tiene un costo adicional de Lps. 50</h5>
        <br><br>
        <h4> Que Sectores cubre el servicio de envio?</h4>
        <h5>Cubre Las ciudades principales como ser San Pedro Sula,Tegucigalpa,La Ceiba, La Lima, Choloma y Villanueva
        </h5>
        <br><br>
        <h4>Como puedo consultar el estado de mi pedido?</h4>
        <h5>en la seccion de contacto realizanos una llamada con gusto te atenderemos</h5>
        <br><br>
        <h4>Se permiten devoluciones</h4>
        <h5>El termino de devolucion de nuestros productos es solamente si el producto tiene defectos, o si recibio un
            productos que no coincide con los detalles en la tienda</h5>
        <br><br>
        <h4>El producto es seguro para niños</h4>
        <h5>Nuestro productos estan libres de todo contenido de plomo. Los niños requieren supervision de una adulto
        </h5>
        <br><br>
        <h4>El producto es autentico?</h4>
        <h5>Algunas de las marcas son genericas , nuestra politica de no vender productos pirateados es estricta asi que
            si adquieres
            producto de marca , ten la seguridad de que es autentico
        </h5>
        <br><br>
    </div>



</html>