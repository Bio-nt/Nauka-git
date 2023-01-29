*** Settings ***
Library  RequestsLibrary

#https://simple-books-api.glitch.me
*** Variables ***
${token}
*** Keywords ***

*** Test Cases ***
API_GET_TEST 1
    ${get_response}    GET    https://simple-books-api.glitch.me/status
    Log to console   status ${get_response}

POST_REGISTRATION
    ${register_json}    create dictionary    clientname=kamil33    clientEmail=kammil33@example.com
    ${post_register_response}     POST    https://simple-books-api.glitch.me/api-clients/
    ...                                                                     json=${register_json}

#ORDER
#    ${headers}    create dictionary    Content-Type=application/json     Authorization=Bearer ${token}
#    ${order_body}    create dictionary    bookId=4    customerName=kamildd
#    ${post_order_response}    POST    https://simple-books-api.glitch.me/orders
#    ...                                                                headers=${headers}     json=${order_body}
