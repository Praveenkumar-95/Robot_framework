*** Settings ***
Library     Selenium2Library

Variables   ../variables.py

*** Keywords ***
wait and input text
    [Arguments]    ${locator}    ${txt_value}
    Wait Until Element Is Visible     ${locator}    timeout=${timeout_1_min}
    Input Text    ${locator}    ${txt_value}

wait and click element
    [Arguments]    ${locator}
     Wait Until Element Is Visible     ${locator}   timeout=${timeout_2_min}
     Click Element    ${locator}