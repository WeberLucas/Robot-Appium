*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve realizar um click simples
    Start session
    Get started
    Navigate to     Clique em Botões
    Go to item      Clique simples     Botão clique simples

#valida que estamos vendo o texto botão simples na nova tela 
    Click Text                  CLIQUE SIMPLES
    #clique no botão clique simples 
    Wait Until Page Contains    Isso é um clique simples
    #verifica se aparece na tela a notificação "Isso é um clique simples"

    Close session 

