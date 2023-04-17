*** Settings ***
Library     Selenium2Library

Variables   ../PageObjects/locators.py
Variables   ../variables.py

Resource    element_actions.robot

*** Keywords ***
User login to
    [Arguments]    ${application}
    Open Browser    url=${application}   browser=Chrome
    Maximize Browser Window
    wait and click element    locator=${login}
    Switch Window   new
    wait and input text    locator=${username}    txt_value=${user_email}
    wait and input text    locator=${password}    txt_value=${pwd}
    Click Button    locator=${signin}
    Switch Window   main
    Wait Until Element Is Not Visible    locator=${login}   timeout=${timeout_30_sec}
    Wait For Condition	return document.readyState == "complete"    timeout=${timeout_1_min}
    ${url} =  Execute Javascript  return window.location.href;
    IF    "${application}" == "https://mmg-staging-web.azurewebsites.net"
        Should End With    ${url}    dashboard
    ELSE IF   "${application}" == "https://mmg-staging-offline.azurewebsites.net"
        Should End With    ${url}    jobs
    END
