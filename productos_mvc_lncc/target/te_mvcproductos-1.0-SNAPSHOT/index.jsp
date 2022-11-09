<%@page import="java.util.ArrayList"%>
<%@page import="com.emergente.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body bgcolor="FFFFFF">        
        <center>
            <table border="1">
                <tr>
                    <th>
                        <h3>SEGUNDO PARCIAL TEM-742</h3>
                        <h3>Nombre: Laura Charcas Callisaya</h3>
                        <h3>CI: 8350079 LP</h3>
                    </th>
                </tr>
            </table>
        </center>    
    <center> <h1>Productos</h1>     
    </center>        
        <a href="MainController?op=nuevo">Nuevo Produtos</a>        
        <table border="1">            
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if (lista != null) {                        
                    for (Producto item : lista) {                                               
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de Eliminar?')">Eliminar</a></td>
            </tr>            
            <%
                }
             }
                %>
        </table>
        </center>
    </body>
</html>
