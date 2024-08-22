*** Settings ***
Resource    PageObject/homePage.robot
Library    SeleniumLibrary

*** Keywords ***
click sign-in button

    wait until element is visible    ${signIn}
#    xpath=//a[@data-test='nav-sign-in']
#    homePage.${signIn}
    Click Element     ${signIn}