*** Settings ***
Documentation       This is some basic info about whole suite
Library             SeleniumLibrary

# run the script:
# robot -d results Tests/Crm.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about test
    [Tags]                  1006    smoke    Contacts
    # initialize Selenium
    set selenium speed      .2s
    set selenium timeout    10s

    # open browser
    log                     Starting the test case
    open browser            https://automationplayground.com/crm    chrome

    ## resize  browser window
    # set window position     x=341    y=169
    # set window size         width=1935    height=1090

    page should contain     Customers Are Priority One!
    click link              SignIn
    page should contain     Login

    input text              id=email-id    admin@robotframeworktutorial.com
    input text              id=password    qwe
    click button            Submit

    page should contain    Our Happy Customers
    click link             id=new-customer
    page should contain    Add Customer

    input text             id=EmailAddress   janedoe@gmail.com
    input text             id=FirstName      Jane
    input text             id=LastName       Doe
    input text             id=City           Dallas
    select from list by value    id=StateOrRegion       TX
    select radio button    gender    female
    select checkbox        name=promos-name
    click button           Submit

    wait until page contains    Success! New customer added.


    sleep                   3s
    close browser

*** Keywords ***

