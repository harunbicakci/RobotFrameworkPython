*** Settings ***
Resource    PageObject/registrationPage.robot

*** Keywords ***
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