
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Clientes" %>
<%@page import="modelo.ClientesDAO" %>
<%@page import="java.util.List"%>



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

            
            <header>
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="contenedor d-flex justify-content-between align-items-center">
                                <div>
                                    <nav class="navbar">
                                        <div class="container">
                                            <a class="navbar-brand" href="ClientesController?accion=inicio">
                                                <img class="rounded mx-auto" src="css/img/logoSinFondo.png" alt="miau" width="40%">
                                            </a>
                                        </div>
                                    </nav>
                                </div>


                                <div>
                                    <form action="clientes.jsp" method="get" class="d-flex" role="search">
                                        <input class="form-control me-2" type="search" name="nombre" placeholder="Nombre" aria-label="Search">
                                        <button class="btn btn-outline-sucess" type="submit" name="buscar" value="Buscar" id="botonAgregar">Buscar</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>  

            </header>

            
            <div class="container" id="tablita">
                <div class="row">
                    <table class="table" id="tabladeco">

                        <thead>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Direccion</th>
                        <th>Localidad</th>
                        <th>Fecha de Nac</th>
                        <th>Telefono</th>
                        <th>Email</th>
                        <th>Modificar</th> 
                        <th>Eliminar</th>
                        
                        </thead>
                        <%
                    List<Clientes> resultado=null;
                    ClientesDAO s1=new ClientesDAO();
                    resultado=s1.listarClientes();
                    
                                for(int i=0;i<resultado.size();i++)
				{
				String ruta="ClientesController?accion=modificar&id="+resultado.get(i).getIdCliente();	
				String rutaE="ClientesController?accion=eliminar&id="+resultado.get(i).getIdCliente();
				%>      

                        
                        
                           
                            <tr>
                         <td><%=resultado.get(i).getIdCliente()%></td>
                         <td><%=resultado.get(i).getNombre()%></td>
                         <td><%=resultado.get(i).getApellido()%></td>
                         <td><%=resultado.get(i).getDireccion()%></td>
                         <td><%=resultado.get(i).getLocalidad()%></td>
                         <td><%=resultado.get(i).getFnac()%></td>
                         <td><%=resultado.get(i).getTelefono()%></td>
                         <td><%=resultado.get(i).getMail()%></td>
                         <td class="text-center"><a href=<%=ruta%>> <i class="fa-solid fa-pen-to-square" id="boton"></i> </a></td>
			 <td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-x" id="boton"></i> </a></td>
                    </tr>
                    <%
                        }
                    %>
                                                          
                        
                        </table>
                          <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="d-flex justify-content-center">
                                <a class="btn btn-primary col-4 m-4 " href="ClientesController?accion=nuevo" id="botonAgregar">+ Agregar</a>
                            </div>
                            
                        </div>
                    </div>
                        
                
            </div>
            
            
        </div>
            </div>
         </div>
        
        
        
    </body>
</html>

