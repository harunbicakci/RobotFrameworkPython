*** Settings ***
Resource    resource1.robot
Library    SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}  https://practicesoftwaretesting.com/

*** Keywords ***
create session
    open browser    ${url}            ${browser}
    maximize browser window

close session
    close browser

processDebuging
    debug

validate user logged in
    page should contain    ${myAccount}
    log to console    User login successful!
    sleep    3s