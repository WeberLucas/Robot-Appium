*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve selecionar sua linguagem de programação favorita 
    Start session
    Get started
    Navigate to     Check e Radio
    Go to item      Botões de radio     Escolha sua linguagem preferida

    click element    xpath=//android.widget.RadioButton[contains(@text, "Javascript")]

    sleep    2
    
    Close session 