*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Browser start and close
    open Browser    ${URL}    ${Browser}

