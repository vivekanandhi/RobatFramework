*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary



*** Variables ***
${URL}    http://www.thetestingworldapi.com/


*** Test Cases ***
TC_Requests
    create session    Get_Students_Details    ${URL}
    ${response} =    get request    Get_Students_Details    api/studentsDetails
    log to console     ${response.status_code}
    log to console     ${response.content}

