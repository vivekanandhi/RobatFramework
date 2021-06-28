*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
TC_007 Create a list
    @{List1}    create list     Hello    335    565    eredg    fdyy    sete
    ${List_length}    get length    ${List1}
    log to console    ${List_length}
    ${List_data}=    get from list    ${List1}   3
    log to console    ${List_data}

