*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{emails}  email1  email2  email3  email4  email5
@{passwords}  pass1  pass2  pass3  pass4  pass5

*** Test Cases ***
Registration In Forum
    [Arguments]  ${email}  ${password}
    open browser    https://gotujmy.pl/forum/  Edge
    run keyword and ignore error  click button    //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]
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
    capture page screenshot    #${project_path}/screen1.png





*** Test Cases ***
Registration
    FOR  ${i}  IN RANGE  1
        Registration In Forum  ${emails}[${i}]  ${passwords}[${i}]
    END

