*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources2Userkey.robot

*** Variables ***
${Var1}    https://www.thetestingworld.com

*** Test Cases ***
Tc_013_datadriven
    open browser    ${Var1}    Chrome
    maximize browser window
    click element    xpath://a[text() = 'Login']
    ${row}=    Read Number Of Rows    Sheet1
    log to console   ${row}

    FOR    ${i}    IN RANGE    1    ${row}+1
        ${username}=    Read Excel data of cell   Sheet1    ${i}    1
        ${password}=    Read Excel data of cell   Sheet1    ${i}    2
        input text    id:username    ${username}
        input password    id:password    ${password}
        click button    xpath://button[text()='Log in']
        sleep    5seconds
    END






