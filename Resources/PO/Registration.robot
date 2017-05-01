*** Settings ***
Library     Selenium2Library

*** Variables ***
${FNAME}    xpath=//*[@id='input_0']
${LNAME}    xpath=//*[@id='input_1']
${EMAIL}    xpath=//*[@id='input_2']
${PWD}      xpath=//*[@id='input_3']
${CPWD}     xpath=//*[@id='input_4']
${PHONE}    xpath=//*[@id='input_5']
${ZIP}      xpath=//*[@id='input_6']
${SUBMITBTN}  xpath=//*[@class='md-accent md-raised hue-2 md-button md-ink-ripple']
${LOGIN_LINK}   link=Log in
${NAME}     xpath=//div[@class='primary-blue hide-xs ng-binding', contains(@text(), 'James Bold')]
${SIGNOUT}  xpath=//a[@href='/logout']


*** Keywords ***
Fill up and Submit Registration Form
    [Documentation]  Filling up the registration form
    Enter Firstname
    Enter Lastname
    Enter Email
    Enter Password
    Enter Confirm Password
    Enter Phone
    Enter Zip
    Submit Form

Enter Firstname
    Input Text  ${FNAME}    JAMES

Enter Lastname
    Input Text  ${LNAME}    BOLD

Enter Email
    input text  ${EMAIL}    jbold@gmail.com

Enter Password
    Input Text  ${PWD}    Test1234

Enter Confirm Password
    Input Text  ${CPWD}    Test1234

Enter Phone
    Input Text  ${PHONE}    2155542255
    ${length}=  get length  ${PHONE}
    should not be equal as integers  ${length}  10

Enter Zip
    Input Text  ${ZIP}    92780

Submit Form
    Click Element   ${SUBMITBTN}

Verify Username on page
    [Documentation]  Verifying the registration on page
    Page should contain element  ${NAME}