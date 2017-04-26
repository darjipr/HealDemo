*** Settings ***
| Library | RequestsLibrary
| Library | CollectionsLib


*** Variables ***
| ${SERVICE_ROOT} | http://api.healonline.org
| ${SERVICE_NAME} | userdetails

*** Test Cases ***
 Example RESTful API test
    [Documentation]     Demo to test a RESTful service
    Create session ${SERVICE_NAME} ${SERVICE_ROOT}
    ${response}=  Get  ${SERVICE_NAME}  /data/username?q=jason,bold

    Should be equal as numbers  ${response.status_code} 200
    ...Expected a status code of 200 but got ${response.status_code} values=False



