*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
@{List1}    create list    hetera    sdrez    eata    aetad    aesg    ase    vd    sesdd

*** Test Cases ***
Tc_008 for loop for list
    #FOR   ${i}    IN RANGE    0    10
     #   log to console     ${i}
    #END
    FOR    ${i}    IN    @{List1}
        log to console    ${i}
    END

