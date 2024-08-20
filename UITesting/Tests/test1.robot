*** Settings ***
Resource    /loginPageApp.robot
Library    SeleniumLibrary
Library    DebugLibrary

Test Setup    utils.create session
Test Teardown   utils.close session

*** Variables ***

*** Test Cases ***
LoginTest
    loginPageApp.loginToApplication
    title should be    Login - Practice Software Testing - Toolshop - v5.0
    sleep   1s

*** Keywords ***
