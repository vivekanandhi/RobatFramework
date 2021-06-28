*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    ../ExternalKeywords/UserKeyworlds.py

*** Variables ***


*** Keywords ***
Start Browser and Maximize
    open browser    https://www.thetestingworld.com/testings    Chrome
    Maximize Browser Window

Close Browser Window
    ${Title}=    get title
    log    ${Title}
    close browser

Before Each Test Suite
    log    before each test suite

After Each Test Suite
    log    After Each Test Suite

Create Folder At Runtime
    [Arguments]    ${foldername}
    create_folder
    create_subfolder    ${foldername}







