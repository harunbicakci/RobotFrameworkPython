*** Settings ***
Resource    /PageObject/homePage.robot
Library    SeleniumLibrary

*** Keywords ***
click sign-in button
    Click Element     homePage.${signIn}