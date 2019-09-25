<%-- 
    Document   : pesquisarVenda
    Created on : 23/09/2019, 11:10:38
    Author     : Lucas Gama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Pesquisa de Venda</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Data da Venda:</th>    
            </tr>
            <c:forEach items="${vendas}" var="venda">
                <tr><c:out value="${venda.idVenda}"/></tr>
                <tr><c:out value="${venda.dataVenda}"/></tr>
            </c:forEach>            
        </table>
    </body>
</html>
