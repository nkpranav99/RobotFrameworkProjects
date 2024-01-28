*** Settings ***
Documentation    The test case navigated to the Sign In Page
Library    SeleniumLibrary

*** Keywords ***
Sign In as an Existing Customer in the CRM platform
    Wait Until Page Contains    Customers Are Priority One!
    Click Link          Sign In
    Input Text    email-name    admin@admin.com
    Input Text    name=password-name    test@123
    Select Checkbox    remember
    Click Button    Submit