/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.zegel.vet.colitasfelices.dao;

import com.zegel.vet.colitasfelices.conexion.Conexion;
import com.zegel.vet.colitasfelices.model.Login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author josel
 */
public class UsuariosDao {

    private Conexion c;

    public UsuariosDao(Conexion conexion) {

        this.c = conexion;
    }

    public UsuariosDao() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public ArrayList<Login> mostrarUsuario() {
        ArrayList<Login> lista = new ArrayList<>();
        try {
            this.c.conectar();
            String sql = "SELECT * FROM mydb.usuarios;";
            try (PreparedStatement pre = this.c.getCon().prepareStatement(sql); ResultSet rs = pre.executeQuery()) {

                while (rs.next()) {
                    Login login = new Login();
                    login.setIdUsuarios(rs.getInt(1));
                    login.setNombres_Apellidos(rs.getString(2));
                    login.setCorreo_Electronico(rs.getString(3));
                    login.setUsuario(rs.getString(4));
                    login.setPassword(rs.getString(5));
                    lista.add(login);
                }
            }
        } catch (SQLException e) {
            System.out.println("Error al mostrar " + e.getMessage());
        } finally {
            this.c.desconectar();
        }
        return lista;
    }
    
    public int insertarUsuario (Login user){
        
        int res = 0;
        
        try {
            this.c.conectar();
            String sql = "INSERT INTO usuarios(Nombres_Apellidos, Correo_Electronico, Usuario, Password) VALUES(?, ?, ?, ?)";
            try(PreparedStatement pre = this.c.getCon().prepareStatement(sql)){
                
                pre.setString(1, user.getNombres_Apellidos());
                pre.setString(2, user.getCorreo_Electronico());
                pre.setString(3, user.getUsuario());
                pre.setString(4, user.getPassword());
                
                res = pre.executeUpdate();
            }
        } catch (SQLException e) {
            System.out.println("Error al insertar"+e.getMessage());
        } finally {
            this.c.desconectar();
        }
        return res;
        
    
    
    }
}

