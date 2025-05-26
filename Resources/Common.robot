*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    OPEN BROWSER                about: blank    chrome

End Web Test
    close browser

Insert Testing Data
    Log     I am setting the test data

Cleanup Testing Data
    log     I am cleaning the test data
