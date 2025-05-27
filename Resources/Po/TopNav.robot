*** Settings ***
Documentation       Amazon top navigation
Library             SeleniumLibrary

*** Keywords ***
Search for Product
    Enter Search Team
    Submit Search

Enter Search Team
    Input Text          id=twotabsearchtextbox    ${SEARCH_TERM}

Submit Search
    click button        id=nav-search-submit-button
