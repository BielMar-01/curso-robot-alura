*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
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

${PROGRAMACAO}     //option[contains(.,'Programação')]

*** Test Cases ***

Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time esperado
    Dado que eu preencha os campos do formulário
    E clique no botão criar card
    Então identificar o card no time esperado

Verificar se é possivel criar mais de um card se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário
    E clique no botão criar card
    Então criar card e identificar múltiplos cards

*** Keywords ***

Dado que eu preencha os campos do formulário
    ${Nome}     FakerLibrary.First Name
    ${Cargo}    FakerLibrary.Job
    ${Imagem}   FakerLibrary.Image Url

    Input Text    ${CAMPO_NOME}     ${Nome}
    Input Text    ${CAMPO_CARGO}    ${Cargo}
    Input Text    ${CAMPO_IMAGEM}   ${Imagem}

    Click Element    ${CAMPO_TIME}
    Click Element    ${PROGRAMACAO}

E clique no botão criar card    
    Click Element    ${CAMPO_CARD}

Então identificar o card no time esperado
    Wait Until Element Is Visible    ${CARD}
    Element Should Be Visible        ${CARD}

Então criar card e identificar múltiplos cards
    FOR    ${i}    IN RANGE    1    3
        Dado que eu preencha os campos do formulário
        E clique no botão criar card
    END

    ${quantidade}=    Get Element Count    ${CARD}
    Should Be True    ${quantidade} >= 2