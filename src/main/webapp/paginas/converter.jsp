<%@ page import="java.net.URL,java.net.HttpURLConnection,java.io.BufferedReader,java.io.InputStreamReader"%>
<%@ page import="java.net.URLConnection" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conversão</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <%
        // Obtendo o valor digitado pelo usuário em REAIS
        double valorEmReais = Double.parseDouble(request.getParameter("valor"));
        double valorDolar = 0.20;

        // Faz uma requisição para a API que retorna a cotação atual do dólar em relação ao real
        URL url = new URL("https://economia.awesomeapi.com.br/last/USD-BRL");
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");
        BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
        String inputLine;
        StringBuilder resposta = new StringBuilder();
        while ((inputLine = in.readLine()) != null) {
            resposta.append(inputLine);
        }
        in.close();

        String line = resposta.toString();
        /* A expressão regular "\"high\":\"" é usada para localizar o índice do valor da taxa de câmbio alta
         e o valor + 8 é adicionado a esse índice para ignorar o texto e obter o valor atual.
         A expressão "\",\"low\"" é usada para localizar o índice final do valor atual
         */
        String cotacao = line.substring(line.indexOf("\"high\":\"") + 8, line.indexOf("\",\"low\""));
        valorDolar = Double.parseDouble(cotacao);

        // Calcula o valor em dólar
        double valorConvertido = valorEmReais / valorDolar;
        DecimalFormat df = new DecimalFormat("$ 0.00");
    %>
    <header>
        <h1>Resultado da conversão</h1>
        <%@ include file="../componentes/botao_voltar.jsp" %>
    </header>
    <main>
        <div class="container">
            <div class="input-group">
                <label for="valor">Valor em Dólar Americano</label>
                <input type="text" id="valor" name="valor" value="<%= df.format(valorConvertido) %>" readonly>
            </div>
        </div>
    </main>
    <%@ include file="../componentes/footer.jsp" %>
</body>
</html>
