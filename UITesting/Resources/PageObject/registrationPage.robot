*** Settings ***
Resource    ../utils.robot
Library    SeleniumLibrary

*** Variables ***
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