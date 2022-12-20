/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Clientes;
import modelo.ClientesDAO;

/**
 *
 * @author Admin
 */
public class ClientesController extends HttpServlet {

  
    public ClientesController() 
    {
        super();        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        ClientesDAO clientesDAO=null;
            try 
	    {
	    clientesDAO=new ClientesDAO();
	    } 
	    catch (ClassNotFoundException e) 
            {	
	    e.printStackTrace();
	    }
        
        String accion;
        RequestDispatcher dispatcher=null;
        accion=request.getParameter("accion");
        if(accion==null||accion.isEmpty())
        {
            dispatcher=request.getRequestDispatcher("vistas/index.jsp");            
        }
                else if(accion.equals("inicio"))
		{
			dispatcher=request.getRequestDispatcher("vistas/index.jsp");
		}
                
                else if(accion.equals("clientes"))
		{
			dispatcher=request.getRequestDispatcher("vistas/clientes.jsp");
		}
        
		else if(accion.equals("modificar"))
		{
			dispatcher=request.getRequestDispatcher("vistas/modificar.jsp");
		}
		else if(accion.equals("actualizar"))
		{                        
                        int id=Integer.parseInt(request.getParameter("id"));
                        String nombre=request.getParameter("nombre");
                        String apellido=request.getParameter("apellido");
                        String direccion=request.getParameter("direccion");
                        String localidad=request.getParameter("localidad");            
                        LocalDate fecha =LocalDate.parse(request.getParameter("fnac"));
                        String telefono=request.getParameter("telefono");
                        String email=request.getParameter("mail");                                    
                        Clientes s1=new Clientes(id,nombre,apellido,direccion,localidad,fecha,telefono,email,true);
		        clientesDAO.ActualizarClientes(s1);			
			dispatcher=request.getRequestDispatcher("vistas/clientes.jsp");			
		}
		else if(accion.equals("eliminar"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
                        clientesDAO.EliminarCliente(id);			
			dispatcher=request.getRequestDispatcher("vistas/clientes.jsp");
		}
		else if(accion.equals("nuevo"))
		{
			dispatcher=request.getRequestDispatcher("vistas/nuevo.jsp");
		}
		else if(accion.equals("insert"))
		{
			String nombre=request.getParameter("nombre");
                        String apellido=request.getParameter("apellido");
                        String direccion=request.getParameter("direccion");
                        String localidad=request.getParameter("localidad");            
                        LocalDate fecha =LocalDate.parse(request.getParameter("fnac"));  
                        String telefono=request.getParameter("telefono");                
                        String email=request.getParameter("email");
                                                            
                        Clientes s1=new Clientes(0,nombre,apellido,direccion,localidad,fecha,telefono,email,true);
		        clientesDAO.InsertClientes(s1);		
			dispatcher=request.getRequestDispatcher("vistas/clientes.jsp");
		}        
        dispatcher.forward(request, response); 
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        doGet(request,response);
    }

   
    @Override
    public String getServletInfo() 
    {
        return "Short description";
    }// </editor-fold>

}


