*** Settings ***
Resource             ../resource/Resource.robot
Suite Setup          
Test Setup           Abrir navegador
Suite Teardown       
Test Teardown        Fechar navegador

*** Test Case ***
Cenário 01: Pesquisar produto existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisar produto não existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "itemNãoExistente"
    Então a página deve exibir a mensagem "No results were found for you search "itemNãoExistente""

*** Keywords ***
