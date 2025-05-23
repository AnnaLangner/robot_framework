*** Settings ***
Resource    Resources/PO/LandingPage.robot
Resource    Resources/PO/TopNav.robot
Resource    Resources/PO/SearchResults.robot
Resource    Resources/PO/Product.robot
Resource    Resources/PO/Cart.robot
Resource    Resources/PO/SignIn.robot
Library    SeleniumLibrary

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Product
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Load

Add Product to Cart
    click button                id=add-to-cart-button
    wait until page contains    1 item added to Cart

Begin Checkout
    click link                  Proceed to Checkout
    page should contain element    ap_signin1a_pagelet_title
    element text should be         ap_signin1a_pagelet_title Sign In
