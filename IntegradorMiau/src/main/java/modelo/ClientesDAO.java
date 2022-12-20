/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ClientesDAO 
{
    Connection conexion;
    
    
         public ClientesDAO() throws ClassNotFoundException
	{
		Conexion con=new Conexion();
		conexion=con.getConnection();
	}
    
    public List<Clientes> listarClientes()
    {
       PreparedStatement ps;
       ResultSet rs;   
       List<Clientes> lista=new ArrayList<>(); 
           
       
       try
       {
                  
           ps=conexion.prepareStatement("select * from clientes");
	   rs=ps.executeQuery();
           
           while(rs.next())
           {
               int id=rs.getInt("idCliente");
               String nombre=rs.getString("nombre");
               String apellido=rs.getString("apellido");
               String direccion=rs.getString("direccion");
               String localidad=rs.getString("localidad");             
               LocalDate fecha = rs.getDate("fnac").toLocalDate();
               String telefono=rs.getString("telefono");
               String email=rs.getString("email");
               
               boolean activo=rs.getBoolean("activo");                 
               Clientes s1=new Clientes(id,nombre,apellido,direccion,localidad,fecha, telefono, email, activo);
               lista.add(s1);                

           }
           
           
       }
       catch(SQLException e)
       {
           System.out.println(e);
           //return null;
       }     
      
       
        return lista;
        
        
    }
    
    
    public Clientes mostrarCliente(int _id)
    {
        PreparedStatement ps;
        ResultSet rs;
        Clientes s1=null;
        try
        {
            ps=conexion.prepareStatement("select * from clientes where idCliente=?");
            ps.setInt(1, _id);
            rs=ps.executeQuery();
            while(rs.next())
            {
                int id=rs.getInt("idCliente");
                String nombre=rs.getString("nombre");
                String apellido=rs.getString("apellido");
                String direccion=rs.getString("direccion");
                String localidad=rs.getString("Localidad");
                LocalDate fnac = rs.getDate("fnac").toLocalDate();
                String telefono=rs.getString("telefono");
                String email=rs.getString("email");
                boolean activo=rs.getBoolean("activo");                 
                s1=new Clientes(id,nombre,apellido,direccion,localidad, fnac, telefono, email, activo);
            }
            
            
            return s1;
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
            return null;
        }
        
    }
    
    
    public boolean InsertClientes(Clientes s1)
    {
        PreparedStatement ps;
        
        try
        {
            ps=conexion.prepareStatement("insert into clientes (nombre,apellido,direccion,localidad,fnac,telefono,email,activo) values (?,?,?,?,?,?,?,?)");
            ps.setString(1, s1.getNombre());
            ps.setString(2, s1.getApellido());
            ps.setString(3, s1.getDireccion());
            ps.setString(4, s1.getLocalidad());
            ps.setObject(5, s1.getFnac());
            ps.setString(6, s1.getTelefono());
            ps.setString(7, s1.getMail());
            ps.setBoolean(8, true);
            ps.execute();
            return true;        
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
            return false;
        }
    }
    
    
    public boolean EliminarCliente(int _id)
    {
        PreparedStatement ps;
        
        try
        {
            ps=conexion.prepareStatement("delete from clientes where idCliente=?");
            ps.setInt(1,_id);            
            ps.execute();
            return true;          
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
            return false;
        }
    }
    
    public boolean ActualizarClientes(Clientes s1)
    {
        PreparedStatement ps;        
        try
        {
            ps=conexion.prepareStatement("update clientes set nombre=?,apellido=?,direccion=?,localidad=?,fnac=?,telefono=?,email=?,activo=? where idCliente=?");
            ps.setString(1, s1.getNombre());
            ps.setString(2, s1.getApellido());
            ps.setString(3, s1.getDireccion());
            ps.setString(4, s1.getLocalidad());
            ps.setObject(5, s1.getFnac());
            ps.setString(6, s1.getTelefono());
            ps.setString(7, s1.getMail());
            ps.setBoolean(8, s1.isActivo());
            ps.setInt(9,s1.getIdCliente());
            ps.execute();
            return true;          
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
            return false;
        }
    }
    
    
    
    
    
    
    
    
 
    
 
 
}

