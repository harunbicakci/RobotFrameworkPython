*** Settings ***
Resource    ../Resources/loginPageApp.robot
Resource    ../Resources/homePageApp.robot
Resource    ../Resources/registrationPageApp.robot
Library    SeleniumLibrary
Library    DebugLibrary

Test Setup    utils.create session
Test Teardown   utils.close session

*** Variables ***

*** Test Cases ***
create new user
    [Tags]    smoke
    homePageApp.click sign-in button
    loginPageApp.wait until login page loads
    loginPageApp.click on register your account link
    registrationPageApp.enter the user informations
    loginPageApp.wait until login page loads
    loginPageApp.user login with valid credentials
    utils.validate user logged in

*** Keywords ***