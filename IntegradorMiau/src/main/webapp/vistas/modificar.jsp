

<%@page import="modelo.ClientesDAO"%>
<%@page import="modelo.Clientes"%>
<%@page import="java.util.List"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>MIAU - Modificar</title>
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
            <header>
                <div class="container" >
                    <div class="row">
                        <div class="col">
                            <div class="contenedor d-flex justify-content-center">
                                <div>
                                    <nav class="navbar">
                                        <div class="container">
                                            <a class="navbar-brand" href="ClientesController?accion=inicio">
                                                <img
                                                class="rounded mx-auto d-flex align-items-center" src="css/img/logoSinFondo.png" alt="miau" width="40%">
                                            </a>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                  
                    </div>
                </div>  
                
            </header>
           
             
            <div class="container" id="formu">
                <div class="rol">
                    <div class="col">
                        <div class="contenedor" id="formulario">
                            <%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Clientes resultado=null;
				ClientesDAO  socio=new ClientesDAO();
				resultado=socio.mostrarCliente(mid);				
		    %>
                            <form class="row g-3" action="ClientesController?accion=actualizar" method="POST">
                                <div class="col-md-12">
                                  <label for="id" class="form-label">ID</label>
                                  <input type="text" class="form-control" id="nombre" value=<%=resultado.getIdCliente() %> name="id" placeholder="Michi" required="required">
                                </div>
                                <div class="col-md-6">
                                  <label for="nombre" class="form-label">Nombre</label>
                                  <input type="text" class="form-control" id="nombre" value=<%=resultado.getNombre() %> name="nombre" placeholder="Michi" required="required">
                                </div>
                                <div class="col-md-6">
                                  <label for="apellido" class="form-label">Apellido</label>
                                  <input type="text" class="form-control" id="apellido" value=<%=resultado.getApellido() %>  name="apellido" placeholder="Patitas" required="required">
                                </div>
                                <div class="col-12">
                                  <label for="direccion" class="form-label">Direccion</label>
                                  <input type="text" class="form-control" id="direccion" value=<%=resultado.getDireccion() %>  name="direccion" placeholder="1234 Main St" required="required">
                                </div>
                                <div class="col-12">
                                  <label for="localidad" class="form-label">Localidad</label>
                                  <input type="text" class="form-control" id="localidad" value=<%=resultado.getLocalidad() %> name="localidad" placeholder="La Matanza" required="required">
                                </div>
                                <div class="col-md-6">
                                  <label for="fnac" class="form-label">Fecha de Nacimiento</label>
                                  <input type="date" class="form-control" id="fnac" value=<%=resultado.getFnac() %> name="fnac" >
                                </div>
                                <div class="col-md-6">
                                  <label for="telefono" class="form-label">Telefono/Celular</label>
                                  <input type="text" class="form-control" id="telefono" value=<%=resultado.getTelefono()%> name="telefono" placeholder="011/54" required="required">
                                </div>
                                <div class="col-md-12">
                                  <label for="email" class="form-label">Email</label>
                                  <input type="email" class="form-control" id="email" value=<%=resultado.getMail()%> name="mail" placeholder="michipatitas@miau.com" required="required">
                                </div>
                                
                                    
                                <div class="col d-flex justify-content-center">
                                    <button type="submit" class="btn btn-primary" id="botonAgregar" name="enviar">Cancelar</button>
                                  </div>
                                  <div class="col d-flex justify-content-center">
                                    <button type="submit" class="btn btn-primary" id="botonAgregar" name="enviar">Enviar</button>
                                  </div>
                                
                                </div>
                               
                              </form>
                        </div>
                    </div>
                </div>
                
            </div>
        
        
        
        
    </body>
</html>
