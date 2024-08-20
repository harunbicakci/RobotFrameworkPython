*** Settings ***
Resource    ../utils.robot
Library    SeleniumLibrary

*** Variables ***
${invalidEmailOrPasswordErrorExpectedText}  Invalid email or password
${sign-in}      xpath=//a[@data-test='nav-sign-in']
${invalidEmailOrPasswordErrorExpectedText}  Invalid email or password
${loginPageHeader}  xpath=/html/body/app-root/div/app-login/div/div/div/h3
${registerYourAccountButton}    xpath=//a[@data-test='register-link']
${loginpageLoginButton}    xpath=/html/body/app-root/div/app-login/div/div/div/form/div[3]/input

${emailAddressField}    id=email
${passwordField}       xpath=//div[@class='input-group']/input[@id='password']