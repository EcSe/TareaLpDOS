/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimpl;

import dao.AutosDAO;
import entidades.Autos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import util.BDConexion;

/**
 *
 * @author Elvin
 */
public class AutosDAOImpl implements AutosDAO{
            Connection cn=BDConexion.conectar();
    @Override
    public String agregar(Autos autos) {
            String mensaje = "";
        try {
            String sql = "INSERT INTO TBAuto VALUES(?,?,?,?,?,?)";
            PreparedStatement pstm = cn.prepareStatement(sql);
            pstm.setString(1, autos.getPlaca());
            pstm.setString(2, autos.getMarca());
            pstm.setString(3, autos.getModelo());
            pstm.setString(4, autos.getColor());
            pstm.setInt(5, autos.getAnio());
            pstm.setDouble(6, autos.getPrecio());
            
            pstm.executeUpdate();
            mensaje = "AGREGADO";
        } catch (Exception e) {
            mensaje = e +"";
        }
        return mensaje;
    }

    @Override
    public List<Autos> lista() {
        List<Autos> lstautos = new ArrayList<Autos>();
        try {
            String sql = "SELECT*FROM TBAuto";
            PreparedStatement pstm = cn.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            
            while (rs.next()) {                
                String  placa = rs.getString(1);
                String marca = rs.getString(2);
                String modelo = rs.getString(3);
                String color = rs.getString(4);
                int anio = rs.getInt(5);
                double precio = rs.getDouble(6);
                
                Autos auto = new Autos(placa, marca, modelo, color, anio, precio);
                lstautos.add(auto);
            }
        } catch (Exception e) {
        }
        return lstautos;
    }
    
}
