*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary

*** Variables ***
${browser}   chrome
${url}  https://practicesoftwaretesting.com/
${username}     test9904@gmail.com
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
${emailAddress}     davidbackham9789@gmail.com
${password}         United@123?
${myAccount}    My account


