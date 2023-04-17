*** Settings ***
Library     Selenium2Library

Variables   ../PageObjects/locators.py
Variables   ../variables.py

Resource    ../KeywordResources/login.robot

*** Test Cases ***
Login Page
    User login to    application=${Desktop}
    User login to    application=${FSE}



