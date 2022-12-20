<%-- 
    Document   : index
    Created on : 19 dic 2022, 19:33:09
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MIAU</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" href="css/img/favicon.ico">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

        <script src="https://kit.fontawesome.com/45a03f3177.js" crossorigin="anonymous"></script>
    </head>
    <body>
       <div id="principal">
        <div class="container" id="contenedor">
            <div class="container" id="gatito">
                    <img id=""
                    class="rounded mx-auto" src="css/img/tapia_jessica_CENTRL.png" alt="miau" width="30%">
            </div>
            
            <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="d-flex justify-content-end" id="nuevo">
                                <a class="btn btn-primary btn-lg" href="ClientesController?accion=nuevo" id="botonAgregar">Nuevo cliente</a>
                            </div>
                            
                        </div>

                        <div class="col">
                            <div class="" id="lista">
                                <a class="btn btn-primary btn-lg" href="ClientesController?accion=clientes" id="botonAgregar">Lista cliente</a>
                            </div>
                            
                        </div>
                    </div>

                </div>
           
        </div>
    </div>
</body>
</html>
