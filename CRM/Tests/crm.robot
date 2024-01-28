*** Settings ***
Documentation    This is some basic info about the whole test suite
Library    SeleniumLibrary
Resource    Common.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/HomePage.robot

#run the script using cmd
# robot -d <Results dir> <path to robot test file>

Test Setup    Open Browser    about:blank    chrome
Test Teardown    Close Browser

*** Test Cases ***
Should be able to add new customer
    [Documentation]    This is a basic info about the test
    [Tags]             1006    Smoke    Contacts
    #Initialize
    Common.Set Selenium Configuration
    Common.Set Window Configuration
    Common.Navigate to the CRM Website

    SignIn.Sign In as an Existing Customer in the CRM platform

    HomePage.Add a New Customer on the CRM Platform
    HomePage.Verify Addition of New Customer Succeeds


