<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conversor de Moedas</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Conversor de Moedas</h1>
    </header>
    <main>
        <div class="container">
            <form action="paginas/converter.jsp">
                <div class="input-group">
                    <label for="valor">Digite o valor em reais (R$)</label>
                    <input type="number" id="valor" name="valor" min="0" step="0.01" required>
                </div>
                <div class="input-group">
                    <label for="moeda">Selecione a moeda de conversão</label>
                    <select id="moeda" name="moeda" required>
                        <option value="USD">Dólar Americano (USD)</option>
                    </select>
                </div>
                <div class="input-group">
                    <button type="submit" class="convert-button">Converter</button>
                </div>
            </form>
        </div>
    </main>
    <%@ include file="/componentes/footer.jsp" %>
</body>
</html>