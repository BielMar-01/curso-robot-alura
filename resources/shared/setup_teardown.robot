*** Settings ***
Resource    ../main.robot

*** Keywords ***
Dado que eu acesse o Organo
    Open Browser    http://localhost:3000/    Chrome
    Maximize Browser Window
    Wait Until Page Contains Element    id:form-nome    10s

Fechar o navegador
    Close Browser