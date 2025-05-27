*** Settings ***
Documentation  This is some basic info about the whole suite

Resource            ../Resources/Common.robot
Resource            ../Resources/AmazonApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

# Copy/paste the below line to Terminal window to execute
# robot -d results tests/amazon.robot

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    http:/www.amazon.com
${SEARCH_TERM} =    Ferrari 458

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    AmazonApp.Search for Products

Logged out user can view a product
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
