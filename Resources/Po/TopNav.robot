*** Settings ***
Documentation       Amazon top navigation
Library             SeleniumLibrary

*** Keywords ***
Search for Product
    Enter Search Team
    Submit Search

Enter Search Team
    Input Text          id=twotabsearchtextbox    Ferrari 458

Submit Search
    click button        id=nav-search-submit-button
