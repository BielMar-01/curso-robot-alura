*** Variables ***
${CAMPO_NOME}      id:form-nome
${CAMPO_CARGO}     id:form-cargo
${CAMPO_IMAGEM}    id:form-imagem
${CAMPO_TIME}      class:lista-suspensa
${CARD}            class:colaborador
${BOTAO_CARD}      id:form-botao

@{SELECIONAR_TIMES}
...    //option[contains(.,'Programação')]
...    //option[contains(.,'Front-End')]
...    //option[contains(.,'Data Science')]
...    //option[contains(.,'Devops')]
...    //option[contains(.,'UX e Design')]
...    //option[contains(.,'Mobile')]
...    //option[contains(.,'Inovação')]

*** Keywords ***

Dado que eu preencha os campos do formulário
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

E clique no botão "Criar Card"
    Click Element    ${BOTAO_CARD}

Então identificar o card no time esperado
    Wait Until Element Is Visible    ${CARD}
    Element Should Be Visible        ${CARD}

Então criar card e identificar múltiplos cards
    FOR    ${i}    IN RANGE    1    3
        Dado que eu preencha os campos do formulário
        Selecionar time    ${SELECIONAR_TIMES}[0]
        E clique no botão "Criar Card"
    END

    ${quantidade}=    Get Element Count    ${CARD}
    Should Be True    ${quantidade} >= 2

Então criar card para todos os times
    FOR    ${TIME}    IN    @{SELECIONAR_TIMES}
        Dado que eu preencha os campos do formulário
        Selecionar time    ${TIME}
        E clique no botão "Criar Card"
    END

    ${quantidade}=    Get Element Count    ${CARD}
    Should Be True    ${quantidade} >= 7

Dado que eu clique no botão "Criar Card"
    Click Element    ${BOTAO_CARD}

Então sistema deve apresentar mensagem de campo obrigatório
    Wait Until Element Is Visible    id:form-nome-erro
    Wait Until Element Is Visible    id:form-cargo-erro
    Wait Until Element Is Visible    id:form-times-erro