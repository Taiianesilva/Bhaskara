

<%@page import="web.Bhaskara.Bhaskara"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bhaskara Web</title>
    <hr>
    </head>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora de Bhaskara</title>
    </head>
    <body>
       
 <style type="text/css">
*{
    margin: 2;
    padding: 2;
}

body{
    background-color: #F0F8FF;
    font-family: sans-serif;
    font-size: 1em;
    color: #000000;
    margin-left: 30%;
    margin-top: 2% ;
    justify-content:center;
}
</style>        
       
        <%
            int a, b, c;
            a = Integer.parseInt(request.getParameter("valorA"));
            b = Integer.parseInt(request.getParameter("valorB"));
            c = Integer.parseInt(request.getParameter("valorC"));
            
           Bhaskara bhaskara = new Bhaskara();
           bhaskara.setA(a);
           bhaskara.setB(b);
           bhaskara.setC(c);
        %>
        <h1>Calculadora de Bhaskara </h1>
        <hr>
        <br>
        <h2>Dados informados:</h2>
        <p><strong>Valor A: </strong><%= bhaskara.getA() %></p>
        <p><strong>Valor B: </strong><%= bhaskara.getB() %></p>
        <p><strong>Valor C: </strong><%= bhaskara.getC() %></p>
        <br>
        <p><strong>Delta: </strong><%= String.format("%.02f",bhaskara.calcularDelta())%></p>
        <p><strong>X': </strong><%= String.format("%.02f",bhaskara.calcularX1())%></p>
        <p><strong>X'': </strong><%= String.format("%.02f",bhaskara.calcularX2())%></p>
        <br>
       
    </body>
</html>

   
