*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Load
    go to                       http:/www.amazon.com

Verify Page Loaded
    wait until page contains    Your Amazon.com