*** Settings ***
Library    SeleniumLibrary



*** Variables ***


*** Keywords ***



*** Test Cases ***
Test1
    Open Browser    https://pl.wikipedia.org/   Edge
    Click Element   id:pt-login
    Input Text  id:wpName1   Boooo
    sleep  5
    Input Password  id:wpPassword1  Wkdofgldod
    Click Button  id:wpLoginAttempt
    sleep  2
    Capture Page ScreenShot  screen.png