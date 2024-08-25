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
    click element    ${loginpageLoginButton}
    sleep    2s

loginToApplication
    click link      ${sign-in}
    wait until element is visible    ${loginPageHeader}
    input text    ${emailAddressField}      ${emailAddress}
    input text    ${passwordField}    ${password}
    click button   ${loginpageLoginButton}
    wait until element is visible    ${myAccountTitle}
    ${actualText} =     Get Text     ${myAccountTitle}
    should be equal    ${actualText}  My account
    log to console    ${actualText}

invalidLoginEmptyEmail
     click link      ${sign-in}
     wait until element is visible    ${loginPageHeader}
     input text    ${emailAddressField}      ${emailEmpty}
     input text    ${passwordField}    ${password}
     click button   ${loginpageLoginButton}
     wait until element is visible    ${errorEmailIsRequired}
     page should contain    ${expectedTextEmailIsRequired}

invalidLoginInvalidEmailFormat
     click link      ${sign-in}
     wait until element is visible    ${loginPageHeader}
     input text    ${emailAddressField}      ${emailInvalidFormat}
     input text    ${passwordField}    ${password}
     click button   ${loginpageLoginButton}
     wait until element is visible    ${errorEmailFormatIsInvalid}
     page should contain    ${expectedTextEmailFormatIsInvalid}

invalidLoginEmptyPassword
     click link      ${sign-in}
     wait until element is visible    ${loginPageHeader}
     input text    ${emailAddressField}     ${emailaddress}
     input text    ${passwordField}    ${passwordEmpty}
     click button   ${loginpageLoginButton}
     wait until element is visible    ${errorPasswordIsReqiured}
     page should contain    ${expectedTextPasswordIsRequired}

invalidLoginPasswordLengthMax
     click link      ${sign-in}
     wait until element is visible    ${loginPageHeader}
     input text    ${emailAddressField}     ${emailaddress}
     input text    ${passwordField}    ${passwordlengthmax}
     click button   ${loginpageLoginButton}
     wait until element is visible    ${errorPasswordLengthIsInvalid}
     page should contain    ${expectedTextPasswordLengthIsInvalid}