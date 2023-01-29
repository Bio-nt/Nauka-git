*** Settings ***
Library  RequestsLibrary

#https://simple-books-api.glitch.me
*** Variables ***

*** Keywords ***

*** Test Cases ***
API_GET_TEST
    ${get_response}  GET  https://simple-books-api.glitch.me/status
    Log to console   status ${get_response}
