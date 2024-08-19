*** Settings ***
Resource    resources/utils.robot
Library    SeleniumLibrary
Library    DebugLibrary

Test Setup    utils.create session
Test Teardown   utils.close session

*** Variables ***

*** Test Cases ***
create new user

    utils.click sign-in button
    utils.wait until login page loads
    utils.click on register your account link
    utils.enter the user informations
    utils.wait until login page loads
    utils.user login with valid credentials
    utils.validate user logged in


*** Keywords ***