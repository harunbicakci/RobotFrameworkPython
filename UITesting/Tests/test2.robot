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

Login Test
    [Tags]   smoke
    loginPageApp.loginToApplication
    title should be    Overview - Practice Software Testing - Toolshop - v5.0
    sleep   1s
    debug


#    create new E2E page and PageApp and test the count of the tools one by one
# -->this is for after successful login getting the products count for powertools
# -- > ${count}	= 	Get Element Count 	class=p-card-wrppr
#   get element count   class=card    --> 8
#   Should Be True 	${count} == 3 	#or expectedCount
#Click Element   xpath=//a[@data-test='nav-categories']
#
#> click Element   xpath=//a[@data-test='nav-power-tools']

*** Keywords ***