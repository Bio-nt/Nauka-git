*** Settings ***
Library  RequestsLibrary

#https://simple-books-api.glitch.me
*** Variables ***
${token}    06b94026900aa2b3e09e103e8d6d25718ad638910545ba08529420f708404731
*** Keywords ***

*** Test Cases ***
API_GET_TEST 1
    ${get_response}    GET    https://simple-books-api.glitch.me/status
    Log to console   status ${get_response}

API_GET_books
    ${get_response}    GET    https://simple-books-api.glitch.me/books
    Log to console   status ${get_response}

#POST_REGISTRATION
#    ${register_json}    create dictionary    clientName=Kamil112    clientEmail=kamil112@example.com
#    ${post_register_response}     POST    https://simple-books-api.glitch.me/api-clients/
#    ...    json=${register_json}

ORDER
    ${headers}    create dictionary    Content-Type=application/json     Authorization=Bearer ${token}
    ${order_body}    create dictionary    bookId=4    customerName=kamildd
    ${post_order_response}    POST    https://simple-books-api.glitch.me/orders
    ...                                                                headers=${headers}     json=${order_body}
