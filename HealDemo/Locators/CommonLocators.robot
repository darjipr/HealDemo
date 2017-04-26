*** Variables ***

${BROWSER}  ff

${REG_URL}  "https://patient.heal.com/register"
${FNAME}    xpath=//*[@id='input_0']
${LNAME}    xpath=//*[@id='input_1']
${EMAIL}    xpath=//*[@id='input_2']
${PWD}      xpath=//*[@id='input_3']
${CPWD}     xpath=//*[@id='input_4']
${PHONE}    xpath=//*[@id='input_5']
${ZIP}      xpath=//*[@id='input_6']
${SUBMITBUT} xpath=//*[@class='md-accent md-raised hue-2 md-button md-ink-ripple']
${LOGIN_LINK}   link=Log in
${LOGO}     xpath=//*[@src='./images/logo@white.png']
${NAME}     xpath=//div[@class='primary-blue hide-xs ng-binding', contains(@text, 'James Bold')]
${SIGNOUT}  xpath=//a[@href='/logout']


@{_tmp}
...name:Testing Heal Demo,
...browserName: Chrome,
...platforom: Windows 8,
...version: 10,

${CAPABILITIES}     ${EMPTY.join(${_tmp})}
${KEY}  jbold:Test1234
${REMOTE_URL}   https://${KEY}@ondemand.saucelabs.com:80/wd/hub
${URL}  https://saucelabs.com/login
${LOGIN_FMSG}}  Incorrect Credentials

