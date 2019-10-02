<%-- 
    Document   : manterPagamento
    Created on : 05/09/2019, 10:15:18
    Author     : Lucas Gama
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Manter Pagamento - ${operacao}</h1>
        <form action="ManterPagamentoController?acao=confirmarOperacao&operacao = ${operacao}" method="post" name="frmManterPagamento">
        <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" name="numIdPagamento" value="${formaPagamento.idFormaPgto}"></td></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    
                    <td><label> Nome da Forma de Pagamento: </label>
                        <input type="text" name="nome" value="${formaPagamento.nome}"></td>
                    <td><label> Conta: </label>
                        <input type="number" name="numconta" value="${formaPagamento.conta}"></td>
                    <td><label> Agência: </label>
                        <input type="number" name="agencia" value="${formaPagamento.agencia}"></td>
                </tr>
                <tr><td></td></tr>
                <tr><td><label> Banco: </label>
                        <input type="text" name="nomeBanco" value="${formaPagamento.banco}"></td>
                    <td><label> Tipo da Conta: </label>
                        <input type="text" name="tipoConta" value="${formaPagamento.tipoConta}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Num. Máximo de Parcelas: </label>
                        <input type="number" name="numMaxParcelas" value="${formaPagamento.numMaxParcelas}"></td>
                    <td><label> Intervalo de Parcelas (dias): </label>
                        <input type="number" name="intervaloParcelas" value="${formaPagamento.intervaloParcelas}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                        
                    <td><label> Taxa do Banco: </label>
                        <input type="number" name="taxaBanco" value="${formaPagamento.taxaBanco}"></td>
                    <td><label> Taxa da Operadora: </label>
                        <input type="number" name="taxaOperadora" value="${formaPagamento.taxaOperadora}"></td>
                    <td><label> Taxa da Multa de Atraso: </label>
                        <input type="number" name="taxamultaAtraso" value="${formaPagamento.multaAtraso}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Situação de Confirmação do Pagamento: </label>
                        <select name="optSituacao">
                            <option value="Automático"><c:if test="${formaPagamento.situacaoConfirmacao == 'Automático'}">selected</c:if>Automático</option>
                            <option value="Manual"><c:if test="${formaPagamento.situacaoConfirmacao == 'Manual'}">selected</c:if>Manual</option>
                            
                        </select>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><input type="reset" value="Cancelar">
                        <input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
