*** Settings ***
Documentation    amazon search results
Library          SeleniumLibrary

*** Keywords ***
Verify Search Completed
    wait until page contains    results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]     Click on the first product in the search results list
    click link          css=#result_0 a.s-access-detail-page
