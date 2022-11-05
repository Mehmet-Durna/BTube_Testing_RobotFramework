*** Settings ***
Resource  basePage.robot

*** Variables ***
${EMAIL_LOGIN_TXT}=       id:SignInEmail
${PASSWORD_LOGIN_TXT}=    id:SignInPassword
${LOGIN_BTN}=             xpath://button[@id='SignInButtonComplete']
${Go_To_Register}=        id:GoToRegister


*** Keywords ***


Log In With Account
    [Arguments]  ${emailaddress}=${EMPTY}  ${password}=${EMPTY}
    Wait Until Element Is Visible  ${EMAIL_LOGIN_TXT}
    Input Text  ${EMAIL_LOGIN_TXT}  ${emailaddress}
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Click Element  ${LOGIN_BTN}


Go to create acount page from sign in page
    sleep    5s
    wait until element is visible    ${go_to_register}
    click link    ${go_to_register}




