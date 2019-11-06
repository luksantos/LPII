<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC - Pesquisa de Venda</title>
    </head>
    <body>
        <h1>Pesquisa de Venda</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Data da Venda:</th> 
                <th>SubTotal</th>
                <th>Código Barra</th>
                <th>Valor do Desconto</th>
                <th>Situação</th>
                <th>Cliente</th>
                <th>Usuário</th>
                <th>Forma de Pagamento</th>
                <th colspan="2">Ação</th>
            </tr>
            <c:forEach items="${vendas}" var="venda">
                <tr>
                    <td><c:out value="${venda.idVenda}"/></td>
                    <td><c:out value="${venda.dataVenda}"/></td>
                    <td><c:out value="${venda.subTotal}"/></td>
                    <td><c:out value="${venda.codBarra}"/></td>
                    <td><c:out value="${venda.valorDesconto}"/></td>
                    <td><c:out value="${venda.situacao}"/></td>
                    <td><c:out value="${venda.cliente.nome}"/></td>
                    <td><c:out value="${venda.usuario.nome}"/></td>
                    <td><c:out value="${venda.formaPagamento.nome}"/></td>
                    <td>
                        <a href="ManterVendaController?acao=prepararOperacao&operacao=Excluir&idVenda=<c:out value="${venda.idVenda}"/>">
                            Excluir</a>
                    </td>
                    <td>
                        <a href="ManterVendaController?acao=prepararOperacao&operacao=Alterar&idVenda=<c:out value="${venda.idVenda}"/>">
                            Alterar</a>
                    </td>
                </tr>
            </c:forEach>
                <tr>
                    <td colspan="11">
                <center><a href="PesquisaItensVendaController"> Manter Itens da Venda </a></center>
                    </td>
                </tr>
        </table>
        <br>
        <form action="ManterVendaController?acao=prepararOperacao&operacao=Incluir" method="post">
            <table><tr><td><input type="submit" name="btnIncluir" value="Incluir"></td></tr></table>
        </form>
        <table><tr><td><input type="submit" name="btnVoltar" value="Voltar" onclick="window.location.href='http://localhost:8084/SGMC/'"></td></tr></table>
    </body>
</html>
