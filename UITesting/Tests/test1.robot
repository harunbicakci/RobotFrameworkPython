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
Login Test
    [Tags]   Smoke
    loginPageApp.loginToApplication
    title should be    Login - Practice Software Testing - Toolshop - v5.0
    sleep   1s

Invalid Login Empty Email
    [Tags]    regression
    loginPageApp.invalidLoginEmptyEmail
    sleep    1

Invalid Login Invalid Email Format
    [Tags]    regression
    loginPageApp.invalidLoginInvalidEmailFormat
    sleep    1

Invalid Login Empty Password
    [Tags]    regression
    loginPageApp.invalidLoginEmptyPassword
    sleep   1

Invalid Login Password Length Max
    [Tags]    regression
    loginPageApp.invalidLoginPasswordLengthMax
    sleep   1

*** Keywords ***
