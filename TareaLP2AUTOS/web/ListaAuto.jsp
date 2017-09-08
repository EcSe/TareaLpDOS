<%-- 
    Document   : ListaAuto
    Created on : 08/09/2017, 05:39:19 PM
    Author     : Elvin
--%>

<%@page import="entidades.Autos"%>
<%@page import="java.util.List"%>
<%@page import="daoimpl.AutosDAOImpl"%>
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
                <div class="titulo">Lista de Autos</div>
                <table class="tablaDatos">
                   <tr>
                    <th>Placa</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Color</th>
                    <th>Anio</th>
                    <th>Precio</th>
                   </tr>
                   <tr>
                  <%
                  AutosDAOImpl autodao = new AutosDAOImpl();
                  List<Autos> lstauto = autodao.lista();
                  
                 for(Autos auto : lstauto)
                 {
                 %>
                <td><%=auto.getPlaca()%></td> 
                <td><%=auto.getMarca()%></td> 
                <td><%=auto.getModelo()%></td> 
                <td><%=auto.getColor()%></td> 
                <td><%=auto.getAnio()%></td> 
                <td><%=auto.getPrecio()%></td>             
                 <%
                 
                 }
                  %>     
                   </tr>
                </table>
            </div>
        </div>
    </body>
</html>
