/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author Admin
 */
public class Clientes 
{
   private int idCliente;
    private String nombre;
    private String apellido;
    private String direccion;
    private String localidad;
    private LocalDate  fnac;
    private String telefono;
    private String mail;
    private boolean activo;
    
    
    public Clientes(int idCliente,String nombre,String apellido,String direccion,String localidad,LocalDate fnac,String telefono,String mail,boolean activo)
    {
        this.idCliente=idCliente;
        this.nombre=nombre;
        this.apellido=apellido;
        this.direccion=direccion;
        this.localidad=localidad;
        this.fnac=fnac;
        this.telefono=telefono;
        this.mail=mail;
        this.activo=activo;        
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public LocalDate getFnac() {
        return fnac;
    }

    public void setFnac(LocalDate fnac) {
        this.fnac = fnac;
    }
    
    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
    
    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }
    
   
    
     
}
