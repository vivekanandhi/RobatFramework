*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}      Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Tc_005 with or without arguments
    Open Browser    ${url}    ${Browser}
    maximize browser window
    #Enter Username Password Email
    Enter Username Password Email    Testing    testingworl@gmail.com    4234235



*** Keywords ***
Enter username password email
   # input text    name:fld_username    testing
    #input text    name:fld_email    testingworlf@gmail.com
    #input text    name: fld_password    23r43645
    [Arguments]    ${username}    ${email}    ${password}
    input text    name:fld_username    ${username}
    input text    name:fld_email    ${email}
    input text    name: fld_password    ${password}


