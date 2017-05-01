*** Settings ***
Resource    Resources/PO/Common.robot
Resource    Resources/PO/Registration.robot

Test Setup  Setup Heal
Test Teardown  Teardown Heal

*** Test Cases ***
Register User on Heal
    [Documentation]  Registering a new user for Heal
    [Tags]  Functional
    Common.Open Heal Registration Page
    Registration.Fill Up and Submit Registration Form
    Registration.Verify Username on page




