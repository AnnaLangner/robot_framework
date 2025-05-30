*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =    xpath=//*[@id="claim-collection-container"]/h1

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element     ${SIGNIN_MAIN_HEADING}
    Element Text Should Be          ${SIGNIN_MAIN_HEADING}  Sign in or create account

Login With Valid Credentials
    [Arguments]    ${Username}    ${Password}
    Fill "Email" Field     ${Username}
    Fill "Password" Fiels     ${Password}
    Click "Sign In" Button

Fill "Email" Field
    [Arguments]    ${Username}
    Log    filling email field with ${Username}

Fill "Password" Fiels
    [Arguments]    ${Password}
    Log    filling passwrd field with ${Password}

Click "Sign In" Button
    Log  Clicking Sign In Button
