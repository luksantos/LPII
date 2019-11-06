<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
        <style type="text/css">
            <!--
            a:link {text-decoration: none;color: #000000}
            a:active {text-decoration: none;}
            a:visited {text-decoration: none;color: #000000}
            a:hover {text-decoration: underline;color: #000000}-->
        </style>
    </head>
    <body>
        <h1>Manter Perda ou Devolução - ${operacao}</h1>
        <form action="ManterDevolucaoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterDevolucao">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" name="numIdPerdaDevolucao" value="${perdaDevolucao.idPerdaDevolucao}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                    <td>
                        <label> Tipo: </label>
                        <select name="optTipo" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="Perda" <c:if test="${perdaDevolucao.tipo == 'Perda'}"> selected</c:if>> Perda</option>
                            <option value="Devolucao" <c:if test="${perdaDevolucao.tipo == 'Devolucao'}"> selected</c:if>>Devolução</option>
                        </select>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td>
                        <label> Venda: </label>
                        <select name="optVenda" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="0" <c:if test="${perdaDevolucao.venda.idVenda == null}">selected</c:if></option>
                            <c:forEach items="${vendas}" var="venda">
                                <option value="${venda.idVenda}" <c:if test="${perdaDevolucao.venda.idVenda == venda.idVenda}">selected</c:if>>${venda.idVenda}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td>
                        <label> Produto: </label>
                        <select name="optProduto" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="0" <c:if test="${perdaDevolucao.produto.idProduto == null}">selected</c:if></option>
                            <c:forEach items="${produtos}" var="produto">
                                <option value="${produto.idProduto}" <c:if test="${perdaDevolucao.produto.idProduto == produto.idProduto}">selected</c:if>>${produto.nome}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><input type="submit" name="btnConfirmar" value="${operacao}">
                    <button><a href="PesquisaDevolucaoController">Voltar</a></button>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
