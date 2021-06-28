*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    http://www.thetestingworld.com/testing
${Browser}    Chrome


*** Test Cases ***
TC_010 check the select
    Open browser    ${URL}    ${Browser}
    maximize browser window
    click element    Xpath://a[text()='Login']
    Select Checkbox    name:remember
    checkbox should be selected    name:remember
    click element    name:remember
    checkbox should not be selected    name:remember