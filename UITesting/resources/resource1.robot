*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary

*** Variables ***
${browser}   chrome
${url}  https://practicesoftwaretesting.com/
${username}     test9903@gmail.com
${password}     CimBom!@2411
${sign-in}      xpath://a[@data-test='nav-sign-in']
${invalidEmailOrPasswordError}  Invalid email or password
${loginPageHeader}  xpath=/html/body/app-root/div/app-login/div/div/div/h3
${registerYourAccountButton}    xpath=//a[@data-test='register-link']
${firstNameField}   id=first_name
${lastnameField}    id=last_name
${dobField}     id=dob
${addressField}    id=address
${postcodeField}    id=postcode
${cityField}    id=city
${stateField}    id=state
${countryField}    id=country
${phoneField}   id=phone
${emailAddressField}    id=email
${passwordIdField}      id=password
${passwordField}       xpath=//div[@class='input-group']/input[@id='password']
${registerButton}    xpath=//button[@type='submit']
${loginpageLoginButton}    xpath=/html/body/app-root/div/app-login/div/div/div/form/div[3]/input

${firstName}        David
${lastName}     Backham
${dateOfBirth}      03221978
${address}      7891 Westham Blvd
${postcode}     34567
${city}     Miami
${state}    Florida
${countryValue}      US
${phoneNo}      4079879922
${emailAddress}     davidbackham9788@gmail.com
${password}         United@123?
${myAccount}    My account

*** Keywords ***
create session
    open browser    ${url}    ${browser}
    maximize browser window

close session
    close browser

loginToApplication
    click link      ${sign-in}
    wait until element is visible    xpath:/html/body/app-root/div/app-login/div/div/div/h3
    input text    id:email      ${username}
    input text    xpath://input[@id='password']    ${password}
    click button    xpath:/html/body/app-root/div/app-login/div/div/div/form/div[3]/input
    wait until element is visible    xpath://div[@class='help-block']
    get text    xpath://div[@class='help-block']
    page should contain    ${invalidEmailOrPasswordError}

processDebuging
    debug

click sign-in button
    Click Element  ${sign-in}

wait until login page loads
    Wait Until Element Contains   ${loginPageHeader}  Login

click on register your account link
    Click Element  ${registerYourAccountButton}

enter the user informations
    input Text    ${firstnamefield}  ${firstname}
    input text    ${lastnameField}   ${lastname}
    input text    ${dobField}        ${dateOfBirth}
    input text    ${addressField}    ${address}
    input text    ${postcodeField}   ${postcode}
    input text    ${cityField}       ${city}
    input text    ${stateField}      ${state}
    Select From List By Value   ${countryField}     ${countryValue}
    input text    ${phoneField}      ${phoneNo}
    input text    ${emailAddressField}      ${emailAddress}
    input password    ${passwordField}      ${password}
    click button    ${registerButton}

user login with valid credentials
    input text    ${emailAddressField}  ${emailAddress}
    input text    ${passwordField}    ${password}
    sleep    2s
    click element    ${loginpageLoginButton}
    sleep    2s

validate user logged in
    page should contain    ${myAccount}
    sleep    3s