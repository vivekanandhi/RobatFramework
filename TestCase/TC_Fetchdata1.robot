*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${Browser}      Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
TC_Fetch data from webpage
    open browser    ${URL}    ${Browser}
    maximize browser window
    ${pagetitle}=    Get Title
    log    ${pagetitle}
    ${Speed}=    get seleniumspeed
    log    ${Speed}
    ${value} =    get value    Xpath://input[@value='Sign up']
    log    ${value}
    ${Text}=    get text    Xpath://a[@class='displayPopup']
    log  ${Text}
