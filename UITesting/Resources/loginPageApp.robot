*** Settings ***
Resource    PageObject/loginPage.robot
Library    SeleniumLibrary

*** Keywords ***
wait until login page loads
    Wait Until Element Contains   ${loginPageHeader}  Login

click on register your account link
    Click Element  ${registerYourAccountButton}

user login with valid credentials
    input text    ${emailAddressField}  ${emailAddress}
    input text    ${passwordField}    ${password}
    sleep    2s
    click element    ${loginpageLoginButton}
    sleep    2s

loginToApplication
    click link      loginPage.${sign-in}
    wait until element is visible    xpath:/html/body/app-root/div/app-login/div/div/div/h3
    input text    id:email      ${emailAddress}
    input text    xpath://input[@id='password']    ${password}
    click button    xpath:/html/body/app-root/div/app-login/div/div/div/form/div[3]/input
    wait until element is visible    xpath://div[@class='help-block']
    get text    xpath://div[@class='help-block']
    page should contain    ${invalidEmailOrPasswordErrorExpectedText}
