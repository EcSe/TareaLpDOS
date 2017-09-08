<%-- 
    Document   : frmAuto
    Created on : 08/09/2017, 05:16:52 PM
    Author     : Elvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="principal">
            <div class="encabezado"></div>
            <div class="menu">
                <ul class="listas">
                    <li><a href="frmAuto.jsp">Formulario Auto</a></li>
                    <li><a href="ListaAuto.jsp">Lista Auto</a></li>
                </ul>
            </div>
            <div class="contenido">
                <div class="titulo">Agregar Auto</div>
                <form action="autoservlet" method="POST">
                    <input type="hidden" name="accion" value="agregarauto">
                    <table class="tablaFrm">
                        <tr>
                            <td>Placa</td>
                            <td><input type="text" name="txtplaca"></td>
                        </tr>
                         <tr>
                            <td>Marca</td>
                            <td><input type="text" name="txtmarca"></td>
                        </tr>
                         <tr>
                            <td>Modelo</td>
                            <td><input type="text" name="txtmodelo"></td>
                        </tr>
                         <tr>
                            <td>Color</td>
                            <td><input type="text" name="txtcolor"></td>
                        </tr>
                         <tr>
                            <td>Anio</td>
                            <td><input type="text" name="txtanio"></td>
                        </tr>
                         <tr>
                            <td>Precio</td>
                            <td><input type="text" name="txtprecio"></td>
                        </tr>
                         <tr>
                            <td></td>
                            <td><input type="submit" value="Agregar"></td>
                        </tr>
                    </table>
                    ${mensaje}
                </form>
            </div>
        </div>
    </body>
</html>
