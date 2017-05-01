*** Settings ***
Library     Selenium2Library
Library     Locators/CommonLocators.robot
Library     Saucelabs

*** Variables ***
${BROWSER}  ff
${REG_URL}  "https://patient.heal.com/register"
${LOGO}     xpath=//*[@src='./images/logo@white.png']

${DESIRED_CAPABILITIES}     name:Testing Heal Demo, browserName: firefox, platforom: Windows 8, version: 10
${KEY}  jbold:abcd343bbd-fsjk342-ajs234hhj-8csnmlkj33
${REMOTE_URL}   https://${KEY}@ondemand.saucelabs.com:80/wd/hub
${URL}  https://saucelabs.com/login
${LOGIN_FMSG}  Incorrect Credentials

*** Keywords ***
Open Heal Registration Page
    Open Browser   ${REG_URL} ${BROWSER}  remote_url=${REMOTE_URL} desired_capabilities=${DESIRED_CAPABILITIES}
    Maximize Browser Window
    Page Should Contain Image   ${LOGO}

Setup Heal
    Open Heal Registration Page

Teardown Heal
    run keyword if  '${REMOTE_URL}' != ''
    ...  Update Saucelab Test Results
    ...  ${SUITE_NAME}: ${TEST_NAME}
    ...  ${TEST_STATUS} ${TEST_TAGS} ${REMOTE_URL}
    Close Browser



