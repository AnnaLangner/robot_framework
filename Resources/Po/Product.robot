*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Load
    wait until page contains    Back to search results

Add to Cart
    click button                id=add-to-cart-button