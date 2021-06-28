*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}      https://chrome.google.com/webstore/category/extensions?hl=en-GB
${Browser}    Chrome

*** Test Cases ***
TC_003 clicks
    open browser    ${URL}      ${Browser}
    maximize browser window
    #select radio button    add_type   office
    #select checkbox    name:terms
    click link    XPath://a[text()= 'Sign in']
    Input Text    XPath://input[@aria-label='E-post eller telefonnummer']    etrtsrs@gmail.com
  #  wait until page contains element    XPath://span[@jsname='V67aGc']
    Double Click Element    xpath://button[@type='button']/div[1]



