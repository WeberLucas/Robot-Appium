*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve marcar as techs que usam Appium 
    Start session
    Get started
    Navigate to     Check e Radio
    Go to item      Checkbox     Marque as techs que usam Appium

#valida que estamos vendo o texto botão simples na nova tela 
    # android.widget.CheckBox[@text="Ruby "]
    #//android.widget.CheckBox[contains(@text, "Ruby")]
    Click Element                  xpath=//android.widget.CheckBox[contains(@text, "Ruby")]
    
    sleep    2
    Close session 