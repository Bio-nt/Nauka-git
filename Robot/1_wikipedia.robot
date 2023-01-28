*** Settings ***
Library    SeleniumLibrary
Test Setup  OPWIKI
Test Teardown   Close Browser
*** Variables ***
${wikipedia_login}  RobotTest
${wikipedia_password}  RobotFramework
${Wikipedia}    https://pl.wikipedia.org/
${error_message}   Podany login lub hasło są nieprawidłowe. Spróbuj jeszcze raz.


*** Keywords ***
OPWIKI
    Open Browser    ${Wikipedia}   Edge
LOG
    [Arguments]    ${Login}    ${Password}

    Click Element   id:pt-login
    Input Text  id:wpName1   ${Login}

    Input Password  id:wpPassword1  ${Password}
    Checkbox Should not be Selected  id:wpRemember
    Select Checkbox  id:wpRemember
    Click Button  id:wpLoginAttempt

*** Test Cases ***
Search In Wikipedia
    LOG   wqeqw    sdasad
    Input Text  id:searchInput  Lewandowska Anna
    Click Button  id:searchButton

    Capture Page ScreenShot  screen.png

Unsuccessful Login To Wikipedia
    LOG  ${wikipedia_login}  ${wikipedia_password}

    Wait Until Element Is Visible    css:.mw-message-box-error  timeout=5
    ${my_error_message}   Get Text   css:.mw-message-box-error
    Log     ${my_error_message}
    Log To Console    ${my_error_message}
    Should Be Equal As Strings   ${error_message}   ${my_error_message}
