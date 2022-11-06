*** Settings ***
Resource  basePage.robot


*** Variables ***
${ACCOUNT_EMAIL}=           xpath://*[@id="SignIn"]/div[3]/p[4]
${ACCOUNT_LASTNAME}=        xpath://*[@id="SignIn"]/div[3]/p[2]
${ACCOUNT_FIRSTNAME}=       xpath://*[@id="SignIn"]/div[3]/div/p[2]


*** Keywords ***
Get Email Adress Of Account
     Wait Until Element Is Visible    ${ACCOUNT_EMAIL}
     ${text}=  Get Text               ${ACCOUNT_EMAIL}
     [Return]  ${text}

Get First Name Of Account
     Wait Until Element Is Visible    ${ACCOUNT_FIRSTNAME}
     ${text}=  Get Text               ${ACCOUNT_FIRSTNAME}
     [Return]  ${text}

Get Last Name Of Account
     Wait Until Element Is Visible    ${ACCOUNT_LASTNAME}
     ${text}=  Get Text               ${ACCOUNT_LASTNAME}
     [Return]  ${text}




