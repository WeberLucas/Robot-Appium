*** Settings ***

Library        AppiumLibrary

*** Variables ***
${START}    QAX

*** Keywords ***
#configuração que está no appium inspector 
Start session
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

Get started
    Wait Until Page Contains    ${START}    5
    Click Text                  ${START} 
    
Navigate to 
    [Arguments]        ${item_text}
    ${hamburger}    Set Variable     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${hamburger}    5
    
    Click Element                    ${hamburger} 

    ${menu_item}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]
    #verificando se o elemento xpath está na tela
    Wait Until Element Is Visible    ${menu_item}
    #clicando no elemento xpath
    Click Element                    ${menu_item}

Go to item
    [Arguments]     ${item}    ${checkpoint}
    #verificando se o clique simples está na tela
    Wait Until Page Contains            ${item}    5
    #clicando no botão simples
    Click Text                          ${item} 
    #validando que o nome botão simples está na tela
    Wait Until Page Contains            ${checkpoint}    5 


    #Sleep        5
Close session 
    Close Application