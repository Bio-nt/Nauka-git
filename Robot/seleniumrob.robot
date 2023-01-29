*** Settings ***
Library  SeleniumLibrary
Test Setup  OP BRO
*** Variables ***
@{emails}  email1  email2  email3  email4  email5
@{passwords}  pass1  pass2  pass3  pass4  pass5
@{message}   Dziękujemy za założenie konta.

*** Keywords ***
OP BRO
    open browser    https://gotujmy.pl/forum/  Edge
    Maximize Browser Window
    Execute JavaScript  document.body.style.zoom='50%'
    sleep   6
    Scroll Element Into View    //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]
    run keyword and ignore error  click button    //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]

Registration In Forum
    [Arguments]  ${email}  ${password}

    click element    //*[@id="navTop"]/nav/ul[1]/li[2]/a
    run keyword and ignore error  click button    //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]
    input text    //*[@id="f_cmu_email"]    ${email}
    input text    //*[@id="f_cmu_email2"]    ${email}
    input text    //*[@id="f_cmu_password"]    ${password}
    input text    //*[@id="f_cmu_password2"]    ${password}
    Checkbox Should Not Be Selected  //*[@id="newsletter_agree"]
    select checkbox  //*[@id="newsletter_agree"]
    Checkbox Should Not Be Selected  //*[@id="user_register_form"]/fieldset/label[2]/input
    select checkbox  //*[@id="user_register_form"]/fieldset/label[2]/input
    Checkbox Should Not Be Selected  //*[@id="user_register_form"]/fieldset/label[3]/input
    select checkbox  //*[@id="user_register_form"]/fieldset/label[3]/input
    run keyword and ignore error  click button  //*[@id="user_register_form"]/fieldset/footer/button
    Wait Until Element Is Visible  //*[id="main_content"]/div/div/h1   timeout=7
    ${my_message}  Get Text    //*[id="main_content"]/div/div/h1
    Log To Console    ${my_message}
    Should Be Equal As Strings   ${my_message}   ${message}
    capture page screenshot    #${project_path}/screen1.png

*** Test Cases ***
Registration of Multiple User
    FOR  ${i}  IN RANGE  2
        Registration In Forum  ${emails}[${i}]  ${passwords}[${i}]
        Log  User ${emails}[${i}]
    END

