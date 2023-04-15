# Conversor de Moedas (PT-BR)
Este projeto consiste em um conversor de moedas desenvolvido utilizando Java 17, Java EE 8 e Apache Tomcat 10.1.7. O objetivo é converter um valor em Real para Dólar, utilizando a API externa gratuita https://economia.awesomeapi.com.br/last/USD-BRL para obter a cotação atualizada do Dólar em relação ao Real. Caso essa API pare de funcionar, foi definido um valor padrão de conversão de 0.20 dólares americanos.

As páginas do conversor de moedas foram criadas utilizando JSP, HTML e CSS, sendo que foram criados dois componentes para serem reutilizados nas páginas: footer.jsp e botao_voltar.jsp.

## Pré-requisitos
Para executar este projeto, é necessário ter o Java 17 e o Apache Tomcat 10.1.7 instalados em seu ambiente de desenvolvimento.

## Como executar o projeto
Faça o download do código-fonte deste projeto.
Abra o terminal ou prompt de comando e navegue até a pasta raiz do projeto.
Execute o comando mvn clean package para gerar o arquivo WAR.
Copie o arquivo conversor-moedas.war gerado na pasta target para a pasta webapps do seu servidor Tomcat.
Inicie o servidor Tomcat executando o comando catalina run na pasta bin do seu servidor Tomcat.
Abra o navegador e digite a URL http://localhost:8080/conversor-moedas/ para acessar a página principal do conversor de moedas.

## Tecnologias utilizadas
Java 17
Java EE 8
Apache Tomcat 10.1.7
JSP
HTML
CSS

## Componentes reutilizáveis
### footer.jsp
O arquivo footer.jsp é um componente que pode ser utilizado em todas as páginas do projeto para exibir o rodapé da página.

### botao_voltar.jsp
O arquivo botao_voltar.jsp é um componente que pode ser utilizado em todas as páginas do projeto para exibir um botão de voltar para a página anterior.

## Considerações finais
Este projeto foi desenvolvido com o objetivo de criar um conversor de moedas simples para o Portifólio 1 da disciplina de Desenvolvimento Web Java utilizando as tecnologias Java 17, Java EE 8 e Apache Tomcat 10.1.7

# Currency Converter (EN)
This project is a currency converter developed using Java 17, Java EE 8, and Apache Tomcat 10.1.7. The goal is to convert a value in Brazilian Reals to U.S. Dollars, using the free external API https://economia.awesomeapi.com.br/last/USD-BRL to get the updated exchange rate of the U.S. Dollar in relation to the Brazilian Real. If this API stops working, a default conversion value of 0.20 U.S. dollars has been defined.

The currency converter pages were created using JSP, HTML, and CSS, with two components created to be reused on the pages: footer.jsp and botao_voltar.jsp.

## Prerequisites
To run this project, you need to have Java 17 and Apache Tomcat 10.1.7 installed on your development environment.

## How to run the project

Download the source code of this project.
Open the terminal or command prompt and navigate to the project's root folder.
Run the command "mvn clean package" to generate the WAR file.
Copy the generated conversor-moedas.war file in the target folder to the webapps folder of your Tomcat server.
Start the Tomcat server by running the command "catalina run" in the bin folder of your Tomcat server.
Open the browser and type the URL http://localhost:8080/conversor-moedas/ to access the main page of the currency converter.

## Technologies used
Java 17
Java EE 8
Apache Tomcat 10.1.7
JSP
HTML
CSS

## Reusable components
### footer.jsp
The footer.jsp file is a component that can be used on all project pages to display the footer of the page.

### botao_voltar.jsp
The botao_voltar.jsp file is a component that can be used on all project pages to display a button to return to the previous page.

## Final considerations
This project was developed to create a simple currency converter for Portfolio 1 of the Java Web Development course using Java 17, Java EE 8, and Apache Tomcat 10.1.7 technologies.
