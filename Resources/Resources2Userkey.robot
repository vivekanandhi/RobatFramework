*** Settings ***
Library    ../TestData/readdata.py

*** Keywords ***
Read Number Of Rows
    [Arguments]   ${sheetname}
    ${max_rows} =    fetch_number_of_rows    ${sheetname}
    [return]    ${max_rows}

Read Excel data of cell
    [Arguments]      ${sheetname}    ${row}    ${cell}
    ${celldata} =    fetch_cell_data    ${sheetname}    ${row}    ${cell}
    [return]    ${celldata}
