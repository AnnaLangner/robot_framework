*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User can serch for product
    [Documentation]             This is som basic info about the test
    [Tags]                      Smoke
    OPEN BROWSER                http:/www.amazon.com     chrome
    wait until page contains    Your Amazon.com
    input text                  id=twotabsearchtextbox    Ferrari 458
    click button                id=nav-search-submit-button
    wait until page contains    results for "Ferrari 458"
    close browser

User can view a product
    [Documentation]             This is som basic info about the test
    [Tags]                      Smoke
    OPEN BROWSER                http:/www.amazon.com     chrome
    wait until page contains    Your Amazon.com
    input text                  id=twotabsearchtextbox    Ferrari 458
    click button                id=nav-search-submit-button
    wait until page contains    results for "Ferrari 458"
    close browser

User can add product to cart
    [Documentation]             This is som basic info about the test
    [Tags]                      Smoke
    OPEN BROWSER                http:/www.amazon.com     chrome
    wait until page contains    Your Amazon.com
    input text                  id=twotabsearchtextbox    Ferrari 458
    click button                id=nav-search-submit-button
    wait until page contains    results for "Ferrari 458"
    click link                  css=#result_0 a.s-acces-detail-page
    wait until page contains    Back to search results
    click button                id=add-to-cart-button
    wait until page contains    1 item added to Cart
    close browser

User must sign in to check out
    [Documentation]             This is som basic info about the test
    [Tags]                      Smoke
    OPEN BROWSER                http:/www.amazon.com     chrome
    wait until page contains    Your Amazon.com
    input text                  id=twotabsearchtextbox    Ferrari 458
    click button                id=nav-search-submit-button
    wait until page contains    results for "Ferrari 458"
    click link                  css=#result_0 a.s-acces-detail-page
    wait until page contains    Back to search results
    click button                id=add-to-cart-button
    wait until page contains    1 item added to Cart
    click link                  Proceed to Checkout
    page should contain element    ap_signin1a_pagelet_title
    element text should be         ap_signin1a_pagelet_title Sign In
    close browser

*** Keywords ***
