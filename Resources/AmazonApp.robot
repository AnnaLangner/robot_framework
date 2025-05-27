*** Settings ***
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot

*** Keywords ***
User is not logged in
     Log    Check to see whetheruser is logged in

User searches for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products

Search results contains relevant products
    SearchResults.Verify Search Completed

User selects the product from search results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Correct product page loads
    Product.Verify Page Loaded

User adds product to thier cart
    Product.Add to Cart
    Cart.Verify Product Added

Product is present in the cart
    CART.VERIFY PRODUCT ADDED

User attepmts to checkout
    Cart.Proceed to Checkout

The user is required to sign in
    SignIn.Verify Page Loaded
