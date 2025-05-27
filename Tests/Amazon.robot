*** Settings ***
Documentation  This is some basic info about the whole suite

Resource            ../Resources/Common.robot
Resource            ../Resources/AmazonApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

# Copy/paste the below line to Terminal window to execute
# robot -d results tests/amazon.robot

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
     Given User is not logged in
     When User searches for products
     Then Search results contains relevant products

Logged out user can view a product
    [Tags]  Smoke
    Given User is not logged in
    And User searches for products
    When Search results contains relevant products
    Then User selects the product from search results

Logged out user can add product to cart
    [Tags]  Smoke
    Given User is not logged in
    And User searches for products
    And Search results contains relevant products
    And User selects the product from search results
    And Correct product page loads
    When User adds product to thier cart
    Then Product is present in the cart

Logged out user must sign in to check out
    [Tags]  Smoke
    Given User is not logged in
    And User searches for products
    And Search results contains relevant products
    And User selects the product from search results
    And Correct product page loads
    And User adds product to thier cart
    And Product is present in the cart
    When User attepmts to checkout
    Then The user is required to sign in
