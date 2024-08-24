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
    click link      ${sign-in}
    wait until element is visible    ${loginPageHeader}
    input text    ${emailAddressField}      ${emailAddress}
    input text    ${passwordField}    ${password}
    click button   ${loginpageLoginButton}
    wait until element is visible    xpath://div[@class='help-block']
    get text    xpath://div[@class='help-block']
    page should contain    ${invalidEmailOrPasswordErrorExpectedText}

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