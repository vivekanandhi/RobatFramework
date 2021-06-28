*** Settings ***

Resource    ../../Resources/resources1.robot

*** Variables ***


*** Test Cases ***
Test case in BDD Format
    given Start Browser and Maximize
    when Create Folder At Runtime    Ansjkg
    then Close Browser Window
