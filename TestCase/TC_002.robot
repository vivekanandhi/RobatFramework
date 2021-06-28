*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}      Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
TC_002 Browser written textbox
    Open Browser    ${URL}      ${Browser}
    Maximize Browser Window
    Input Text    name:fld_username    Testworld
    input text    XPath://input[@name='fld_email']    testingworld@gmail.com
    clear element text   name:fld_username
