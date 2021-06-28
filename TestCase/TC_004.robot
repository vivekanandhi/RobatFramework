*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}      Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
TC_004 select by list or dropdown
    open browser    ${URL}    ${Browser}
    maximize browser window
    select from list by index    name:sex    2
    set selenium speed    1 second
    select from list by value    name:sex  1
    select from list by label    name:sex    female
