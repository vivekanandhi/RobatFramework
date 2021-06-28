*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}      Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
TC_Fetch data list from webpage
    open browser    ${URL}    ${Browser}
    maximize browser window
    select from list by index    name:sex   1
    ${val}=    get selected list value  name:sex
    log    ${val}
    ${Text} =    get selected list value    name:sex
    log    ${Text}
    ${alllabel}=  get list items    name:sex
    log    ${alllabel}




