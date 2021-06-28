*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_006 set variable in testcase
    ${Var1} =    set variable    Helloworld
    log to console    ${Var1}
