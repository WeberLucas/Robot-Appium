*** Settings ***
Resource    ../resources/base.resource

*** Test Cases ***
Deve poder remover o Darth Vader

    Start session
    Get started

    Navigate to        Star Wars    
    Go to item         Lista    Darth Vader


    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id, "indicator")]
    ${start_x}         Set Variable        ${positions}[x]
    ${start_y}         Set Variable        ${positions}[y]
    ${offset_x}        Evaluate            ${positions}[x] - 640
    ${offset_y}        Set Variable        ${positions}[x]

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}
    Click Element        id=com.qaxperience.yodapp:id/btnRemove
    Wait Until Page Does Not Contain    Darth Vader
    Close session
    
