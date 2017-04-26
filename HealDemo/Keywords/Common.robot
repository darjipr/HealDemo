*** Settings ***
Library     Selenium2Library
Library     ../../HealDemo/CommonLocators.robot

*** Keywords ***
Open Heal Registration Page
    Open Browser ${REG_URL} ${BROWSER}
    Maximize Browser Window
    Page Should Contain Image   ${LOGO}


Fill up and Submit Registration Form
    Enter Firstname
    Enter Lastname
    Enter Email
    Enter Password
    Enter Confirm Password
    Enter Phone
    Enter Zip
    Submit Form

Enter Firstname


Enter Lastname
    Input Text  ${FNAME}    JAMES

Enter Email
    Input Text  ${LNAME}    BOLD

Enter Password
    Input Text  ${PWD}    Test1234



Enter Confirm Password
    Input Text  ${CPWD}    Test1234


Enter Phone
    Input Text  ${PHONE}    2155542255
    ${length}=  get length  ${PHONE}
    should not be equal as integers  ${length}  10

Enter Zip
    Input Text  ${FNAME}    JBARNES


Submit Form
    Click Element   ${SUBMITBTN}

Setup Heal
    Open Heal Registration Page

Teardown Heal
    Click Element   ${SIGNOUT}
    Close Browser

Verify Username on page
    Page should contain element ${NAME}

