*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://automationplayground.com/crm/

*** Keywords ***
Set Selenium Configuration
    Set Selenium Speed    .2s
    Set Selenium Timeout  10s

Set Window Configuration
    #resize browser
    Set Window Position    x=341    y=169
    Maximize Browser Window

Navigate to the CRM Website
    Go To       ${BASE_URL}