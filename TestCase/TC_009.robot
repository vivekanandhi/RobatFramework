*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Test Cases ***
Tc_009 Run keyword
    ${Var}=    set variable    Yes
    run keyword if      '${Var}'=='Yes'  log to console    value found
    run keyword if      '${Var}'=='NO'  log to console    value not found

#${key_var} =    set variable    log to console
    #run keyword    ${key_var}    testingworldnoida.com
