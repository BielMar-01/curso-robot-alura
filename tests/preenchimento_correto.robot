*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    setup_teardown.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

*** Variables ***
${CAMPO_NOME}      id:form-nome
${CAMPO_CARGO}     id:form-cargo
${CAMPO_IMAGEM}    id:form-imagem
${CAMPO_TIME}      class:lista-suspensa
${CAMPO_CARD}      id:form-botao 
${CARD}            class:colaborador

@{SELECIONAR_TIMES}
...       //option[contains(.,'Programação')]
...       //option[contains(.,'Front-End')]
...       //option[contains(.,'Data Science')]
...       //option[contains(.,'Devops')]
...       //option[contains(.,'UX e Design')]
...       //option[contains(.,'Mobile')]
...       //option[contains(.,'Inovação')]

*** Test Cases ***

Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time esperado
    Dado que eu preencha os campos do formulário
    Selecionar time    ${SELECIONAR_TIMES}[0]
    E clique no botão criar card
    Então identificar o card no time esperado

Verificar se é possível criar mais de um card se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário
    Selecionar time    ${SELECIONAR_TIMES}[0]
    E clique no botão criar card
    Então criar card e identificar múltiplos cards

Verificar se é possível criar um card para cada time se preenchermos os campos corretamente
    Então criar card para todos os times

*** Keywords ***

Dado que eu preencha os campos do formulário
    Wait Until Element Is Visible    ${CAMPO_NOME}    10s

    ${Nome}=     FakerLibrary.First Name
    ${Cargo}=    FakerLibrary.Job
    ${Imagem}=   FakerLibrary.Image Url

    Input Text    ${CAMPO_NOME}     ${Nome}
    Input Text    ${CAMPO_CARGO}    ${Cargo}
    Input Text    ${CAMPO_IMAGEM}   ${Imagem}

Selecionar time
    [Arguments]    ${TIME}
    Click Element    ${CAMPO_TIME}
    Click Element    ${TIME}

E clique no botão criar card    
    Click Element    ${CAMPO_CARD}

Então identificar o card no time esperado
    Wait Until Element Is Visible    ${CARD}    10s
    Element Should Be Visible        ${CARD}

Então criar card e identificar múltiplos cards
    FOR    ${i}    IN RANGE    1    3
        Dado que eu preencha os campos do formulário
        Selecionar time    ${SELECIONAR_TIMES}[0]
        E clique no botão criar card
    END

    ${quantidade}=    Get Element Count    ${CARD}
    Should Be True    ${quantidade} >= 2

Então criar card para todos os times
    FOR    ${TIME}    IN    @{SELECIONAR_TIMES}
        Dado que eu preencha os campos do formulário
        Selecionar time    ${TIME}
        E clique no botão criar card
    END

    ${quantidade}=    Get Element Count    ${CARD}
    Should Be True    ${quantidade} >= 7