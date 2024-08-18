*** Settings ***
Resource    resources/resource1.robot
Library    SeleniumLibrary
Library    DebugLibrary

Test Setup    resource1.create session
Test Teardown   resource1.close session

*** Variables ***

*** Test Cases ***
LoginTest
    loginToApplication
    title should be    Login - Practice Software Testing - Toolshop - v5.0
    sleep   1s

*** Keywords ***
