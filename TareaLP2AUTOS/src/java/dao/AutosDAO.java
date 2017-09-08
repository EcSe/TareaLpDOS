/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Autos;
import java.util.List;

/**
 *
 * @author Elvin
 */
public interface AutosDAO {
    String agregar(Autos autos );
    List<Autos> lista();
}
