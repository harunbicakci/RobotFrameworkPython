*** Settings ***
Resource    ../utils.robot
Library    SeleniumLibrary

*** Variables ***
${logoButton}       xpath=//a[@class='navbar-brand']
${homeButton}       xpath=//a[@data-test='nav-home']
${categoriesDropdownButton}     xpath=//a[@data-test='nav-categories']
${handToolsButton}      xpath=//a[@data-test='nav-hand-tools']
${powerToolsButton}      xpath=//a[@data-test='nav-power-tools']
${otherButton}          xpath=//a[@data-test='nav-other']
${specialToolsButton}   xpath=//a[@data-test='nav-special-tools']
${rentalsButton}        xpath=//a[@data-test='nav-rentals']
${contactButton}        xpath=//a[@data-test='nav-contact']
${userProfileDropdownButton}    xpath=//a[@data-test='nav-menu']
${myAccountButton}    xpath=//a[@data-test='nav-my-account']
${myFavoritesButton}    xpath=//a[@data-test='nav-my-favorites']
${myProfileButton}    xpath=//a[@data-test='nav-my-profile']
${myInvoicesButton}    xpath=//a[@data-test='nav-my-invoices']
${myMessagesButton}    xpath=//a[@data-test='nav-my-messages']
${signOutButton}    xpath=//a[@data-test='nav-sign-out']
${cartButton}       xpath=//a[@data-test='nav-cart']
${languageButton}   id=language

${favoritesButton}      xpath=//a[@routerlink='favorites']
${profileButton}      xpath=//a[@routerlink='profile']
${invoicesButton}      xpath=//a[@routerlink='invoices']
${messagesButton}      xpath=//a[@routerlink='messages']