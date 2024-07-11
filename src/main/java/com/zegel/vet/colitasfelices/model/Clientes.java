/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.zegel.vet.colitasfelices.model;
 
/**
*
* @author JOSUEDAVID
*/
public class Clientes {
    private int idClientes;
    private String Nombres_Apellidos;
    private String Telefono;
    private String Correo_Electronico;
    private String Direccion;
    private String DNI;
 
    /**
     * @return the idClientes
     */
    public int getIdClientes() {
        return idClientes;
    }
 
    /**
     * @param idClientes the idClientes to set
     */
    public void setIdClientes(int idClientes) {
        this.idClientes = idClientes;
    }
 
    /**
     * @return the Nombres_Apellidos
     */
    public String getNombres_Apellidos() {
        return Nombres_Apellidos;
    }
 
    /**
     * @param Nombres_Apellidos the Nombres_Apellidos to set
     */
    public void setNombres_Apellidos(String Nombres_Apellidos) {
        this.Nombres_Apellidos = Nombres_Apellidos;
    }
 
    /**
     * @return the Telefono
     */
    public String getTelefono() {
        return Telefono;
    }
 
    /**
     * @param Telefono the Telefono to set
     */
    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }
 
    /**
     * @return the Correo_Electronico
     */
    public String getCorreo_Electronico() {
        return Correo_Electronico;
    }
 
    /**
     * @param Correo_Electronico the Correo_Electronico to set
     */
    public void setCorreo_Electronico(String Correo_Electronico) {
        this.Correo_Electronico = Correo_Electronico;
    }
 
    /**
     * @return the Direccion
     */
    public String getDireccion() {
        return Direccion;
    }
 
    /**
     * @param Direccion the Direccion to set
     */
    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }
 
    /**
     * @return the DNI
     */
    public String getDNI() {
        return DNI;
    }
 
    /**
     * @param DNI the DNI to set
     */
    public void setDNI(String DNI) {
        this.DNI = DNI;
    }
}
