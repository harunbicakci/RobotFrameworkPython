*** Settings ***
Documentation    My first robot test
Library    SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}  https://practicesoftwaretesting.com/
${username}     test9903@gmail.com
${password}     CimBom!@2411


*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    maximize browser window
    loginToApplication
    close browser


*** Keywords ***
loginToApplication
    click link    xpath://a[@data-test='nav-sign-in']
    wait until element is visible    xpath:/html/body/app-root/div/app-login/div/div/div/h3
    input text    id:email      ${username}
    sleep   3s
    input text    xpath://input[@id='password']    ${password}
    click button    xpath:/html/body/app-root/div/app-login/div/div/div/form/div[3]/input
    sleep    3s