*** Settings ***
Documentation       Amazon top navigation
Library             SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BUTTON} =    id=nav-search-submit-button
${TOPNAV_SEARCH_BAR} =             id=twotabsearchtextbox

*** Keywords ***
Search for Product
    Enter Search Team
    Submit Search

Enter Search Team
    Input Text          ${TOPNAV_SEARCH_BAR}    ${SEARCH_TERM}

Submit Search
    click button        ${TOPNAV_SEARCH_BUTTON}
