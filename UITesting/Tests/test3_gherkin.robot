# Gherkin

*** Keywords ***
user is not logged in
    log to console    not logged in

user search for product
    log to console    user search for product

required to sign in
    log to console    sign in please

*** Test Cases ***

gherkin style test
    Given user is not logged in
    When user search for product
    Then required to sign in