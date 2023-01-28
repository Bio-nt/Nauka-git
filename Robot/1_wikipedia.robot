*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${wikipedia_login}  RobotTest
${wikipedia_password}  RobotFramework
${Wikipedia}    https://pl.wikipedia.org/
${error_message}   Podany login lub hasło są nieprawidłowe. Spróbuj jeszcze raz.


*** Keywords ***

*** Test Cases ***
Search In Wikipedia
    Open Browser    ${Wikipedia}   Edge
    Input Text  id:searchInput  Lewandowska Anna
    Click Button  id:searchButton

    Capture Page ScreenShot  screen.png

Unsuccessful Login To Wikipedia
    Open Browser    ${Wikipedia}   Edge
    Click Element   id:pt-login
    Input Text  id:wpName1   ${wikipedia_login}

    Input Password  id:wpPassword1  123123
    Checkbox Should not be Selected  id:wpRemember
    Select Checkbox  id:wpRemember
    Click Button  id:wpLoginAttempt
    Wait Until Element Is Visible    css:.mw-message-box-error  timeout=5
    ${my_error_message}   Get Text   css:.mw-message-box-error
    Log     ${my_error_message}
    Log To Console    ${my_error_message}
    Should Be Equal As Strings   ${error_message}   ${my_error_message}
