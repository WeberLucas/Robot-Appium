*** Settings ***

Library        AppiumLibrary

*** Variables ***
${START}    QAX

*** Test Cases ***

Deve realizar um click simples
#configuração que está no appium inspector 
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true


    Wait Until Page Contains    ${START}    5
    Click Text                  ${START} 
    
    ${hamburger}    Set Variable     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${hamburger}    5
    
    Click Element                    ${hamburger} 

    ${menu_item}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]
    #verificando se o elemento xpath está na tela
    Wait Until Element Is Visible    ${menu_item}
    #clicando no elemento xpath
    Click Element                    ${menu_item}
    #verificando se o clique simples está na tela
    Wait Until Page Contains            Clique simples    5
    #clicando no botão simples
    Click Text                          Clique simples 
    #validando que o nome botão simples está na tela
    Wait Until Page Contains            Botão clique simples    5 
    #valida que estamos vendo o texto botão simples na nova tela 
    Click Text                  CLIQUE SIMPLES
    #clique no botão clique simples 
    Wait Until Page Contains    Isso é um clique simples
    #verifica se aparece na tela a notificação "Isso é um clique simples"

    #Sleep        5

    Close Application