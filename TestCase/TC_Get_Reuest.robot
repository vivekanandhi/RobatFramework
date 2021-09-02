*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.thetestingworldapi.com/
${StudentID}    28
*** Test Cases ***
TC_Fetch_Students_Details_By_ID
    create session    FetchData     ${URL}
    ${Response}=    get request   FetchData  api/studentsDetails/${StudentID}
    ${actual_code}=    convert to string    ${Response.status_code}
    should be equal    ${actual_code}    200
