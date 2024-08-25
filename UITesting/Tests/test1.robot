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
