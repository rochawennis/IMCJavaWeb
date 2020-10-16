<%@page import="br.com.wennis.Imc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculadora IMC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%

            Imc imc = new Imc();
            String peso, altura;

            peso = request.getParameter("peso");
            altura = request.getParameter("altura");

            imc.setPeso(Float.parseFloat(peso));
            imc.setAltura(Float.parseFloat(altura));

        %>

        <div class="container">
            <h2 class="py-4 text-left">Resultado</h2>
            <h2 class="py-2 text-left">IMC: <%=String.format("%.2f", imc.calculaIMC())%></h2>
            <h2 class="py-2 text-left">Classificacao: <%=imc.classificaIMC(imc.calculaIMC())%></h2>
            <form><input type="button" value="Voltar" onclick="history.back();" class="btn btn-primary">
                </div>
                </body>
                </html>
