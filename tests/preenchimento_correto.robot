*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    setup_teardown.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

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
