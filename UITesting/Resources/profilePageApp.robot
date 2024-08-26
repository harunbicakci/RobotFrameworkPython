*** Settings ***
Resource    PageObject/profilePage.robot
Resource    PageObject/handToolPage.robot
Resource    PageObject/cartPage.robot
Library    SeleniumLibrary

*** Keywords ***

purchase 2 random items
    click element    ${categoriesDropdownButton}
    click element    ${handToolsButton}
    wait until element is visible    ${productCombinationPliers}
    click element    ${productPliers}
    wait until element is visible    ${productPageHeaderName}
    ${actualHeaderText} =   get text      ${productPageHeaderName}
    should be equal    ${actualHeaderText}    Pliers
    log to console    Product Pliers page header --> ${actualHeaderText}
    click element    ${buttonaddtocart}
    wait until element is not visible    ${alertaddedtocart}

    click element    ${categoriesDropdownButton}
    click element    ${handToolsButton}
    wait until element is visible    ${productCombinationPliers}
    click element    ${productBoltCutters}
    wait until element is visible    ${productPageHeaderName}
    ${actualHeaderText} =   get text      ${productPageHeaderName}
    should be equal    ${actualHeaderText}    Bolt Cutters
    log to console    Product Bolt Cutters page header --> ${actualHeaderText}
    click element    ${buttonaddtocart}
    wait until element is not visible    ${alertaddedtocart}

cart validation
    click element    ${cartButton}
    wait until element is not visible    ${carttable}
    ${purchaseTotal} =    get text    ${cartTableTotal}
    log to console    Cart total amount is --> ${purchaseTotal}
    click element    ${buttonCheckout}
    debug