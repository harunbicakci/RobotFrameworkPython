*** Settings ***
Resource    resources/resource1.robot
Library    SeleniumLibrary
Library    DebugLibrary

Test Setup    resource1.create session
Test Teardown   resource1.close session

*** Variables ***

*** Test Cases ***
create new user

    resource1.click sign-in button
    resource1.wait until login page loads
    resource1.click on register your account link
    resource1.enter the user informations
    resource1.wait until login page loads
    resource1.user login with valid credentials
    resource1.validate user logged in


*** Keywords ***