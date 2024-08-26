*** Settings ***
Resource    ../utils.robot
Library    SeleniumLibrary

*** Variables ***
${cartTable}        xpath=//table[@class='table-hover']
${cartTableTotal}   xpath=/html/body/app-root/div/app-checkout/aw-wizard/div/aw-wizard-step[1]/app-cart/div/table/tfoot/tr/td[4]
${buttonCheckout}    xpath=//button[@data-test='proceed-1']