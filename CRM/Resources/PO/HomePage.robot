*** Settings ***
Documentation    The test case navigated to the HomePage
Library    SeleniumLibrary

*** Keywords ***
Add a New Customer on the CRM Platform
    Wait Until Page Contains    Our Happy Customers
    Click Link    New Customer

    Wait Until Page Contains    Add Customer
    Input Text    EmailAddress    johndoe@gmail.com
    Input Text    FirstName    John
    Input Text    LastName    Doe
    Input Text    City    Dallas
    Select From List By Value    StateOrRegion    TX

    Select Radio Button    gender    male
    Select Checkbox    name=promos-name
    Click Button    Submit

Verify Addition of New Customer Succeeds
    Wait Until Page Contains    Success! New customer added.