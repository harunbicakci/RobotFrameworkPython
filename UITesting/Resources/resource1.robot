*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary

*** Variables ***
${myAccount}    My account
${firstProductimage}    xpath=//img[@class='card-img-top']

${emailAddress}     davidbackham9116@gmail.com
${password}         United@123?
${emailEmpty}
${passwordEmpty}
${emailInvalidFormat}     test123
${passwordLengthMax}    United@123?United@123?United@123?United@123?United@123?United@123?