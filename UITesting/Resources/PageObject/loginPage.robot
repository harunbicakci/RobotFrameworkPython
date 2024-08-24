*** Settings ***
Resource    ../utils.robot
Library    SeleniumLibrary

*** Variables ***
${invalidEmailOrPasswordErrorExpectedText}  Invalid email or password
${sign-in}      xpath=//a[@data-test='nav-sign-in']
${loginPageHeader}  xpath=/html/body/app-root/div/app-login/div/div/div/h3
${registerYourAccountButton}    xpath=//a[@data-test='register-link']
${loginpageLoginButton}    xpath=/html/body/app-root/div/app-login/div/div/div/form/div[3]/input

${emailAddressField}    id=email
${passwordField}       xpath://input[@id='password']
${errorInvalidEmailOrPassword}      xpath=//div[@class='help-block']
${errorEmailIsRequired}         xpath=//div[@id='email-error']/div
${errorEmailFormatIsInvalid}    xpath=//div[@id='email-error']/div
${errorPasswordIsReqiured}          xpath=//div[@id='password-error']/div
${errorPasswordLengthIsInvalid}     id=password-error

${expectedTextEmailIsRequired}      Email is required
${expectedTextEmailFormatIsInvalid}     Email format is invalid
${expectedTextPasswordIsRequired}   Password is required
${expectedTextPasswordLengthIsInvalid}    Password length is invalid