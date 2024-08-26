*** Settings ***
Resource    ../utils.robot
Library    SeleniumLibrary

*** Variables ***
${productCombinationPliers}     xpath=//img[@src='assets/img/products/pliers01.avif']
${productPliers}                xpath=//img[@src='assets/img/products/pliers02.avif']
${productBoltCutters}           xpath=//img[@src='assets/img/products/pliers03.avif']
${productLongNosePliers}        xpath=//img[@src='assets/img/products/pliers04.avif']
${productSlipJointPliers}        xpath=//img[@src='assets/img/products/pliers05.avif']
${productClawHammerWithShockReductionGrip}        xpath=//img[@src='assets/img/products/hammer01.avif']
${productHammer}                xpath=//img[@src='assets/img/products/hammer02.avif']
${productClawHammer}            xpath=//img[@src='assets/img/products/hammer03.avif']
${productThorHammer}            xpath=//img[@src='assets/img/products/hammer04.avif']


${productPageHeaderName}        xpath=//h1[@data-test='product-name']
${buttonAddToCart}              xpath=//button[@data-test='add-to-cart']


${alertAddedToCart}         xpath=//div[@role='alert']