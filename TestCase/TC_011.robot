*** Settings ***
Library    SeleniumLibrary
Library    ../../ExternalKeywords/locator.py

*** Variables ***
${Browser}      Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Tc_011 with or without arguments
    Open Browser    ${url}    ${Browser}
    maximize browser window
    ${username} =    Read Element Locator    registration.username_textbox_name
    input text    name:${username}    testing
    input text    name:fld_email    testingworlf@gmail.com
    ${password} =    Read Element Locator    registration.password_textbox_name
    input text    name:${password}     2343645

*** Keywords ***
Read Element Locator
    [Arguments]    ${JsonPath}
    ${result}=    read_locator_from_json    ${JsonPath}
    [return]    ${result}


