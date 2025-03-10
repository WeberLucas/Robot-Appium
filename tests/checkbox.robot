*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve marcar as techs que usam Appium 
    Start session
    Get started
    Navigate to     Check e Radio
    Go to item      Checkbox     Marque as techs que usam Appium

#valida que estamos vendo o texto botão simples na nova tela 
    # android.widget.CheckBox[@text="Ruby "] utilizando o espaço que o "dev" colocou no codigo
    #//android.widget.CheckBox[contains(@text, "Ruby")] sem utlizar o espaço e utlizando a classe para clicar
    
    @{techs}    Create List    Ruby    Python    Java    Javascript    C#    Robot Framework

    FOR    ${tech}    IN     @{techs}
    Click Element                  xpath=//android.widget.CheckBox[contains(@text, "${tech}")]
    
    sleep    2

    END
    sleep    2
    
    Close session 