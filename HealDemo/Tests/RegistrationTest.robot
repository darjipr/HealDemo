*** Settings ***
Library     Selenium2Library
Library     Builtin
Library     ../../HealDemo/CommonLocators.robot
Library     ../../HealDemo/Common.robot

Test Setup  Setup Heal
Test Teardown  Teardown Heal

*** Test Cases ***
Register User on Heal
    Open Heal Registration Page
    Fill Up and Submit Registration Form
    Verify Username on page


#Running using Saucelabs
Registraion using Saucelabs
    Open Browser    ${URL}
    remote_url=${REMOTE_URL}
    desired_capabilities=${CAPABILITIES}

