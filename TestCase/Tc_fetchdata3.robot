*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/resources1.robot


*** Variables ***
${Browser}      Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
TC_Fetch data list from webpage

    Create Folder At Runtime    testing
    open browser    ${URL}    ${Browser}
    maximize browser window
    ${ActualuRL}=    get location
    log    ${ActualuRL}
    ${pagehtml}=    get source
    log    ${pagehtml}
    ${Attr}    get element attribute    name:fld_username    class
    log   ${Attr}
    ${count}=    get element count    class:field
    log    ${count}
