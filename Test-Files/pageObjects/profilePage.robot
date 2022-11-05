*** Settings ***
Resource  basePage.robot


*** Variables ***
${ACCOUNT_EMAIL}=     xpath://p[normalize-space()='mehmetdurna0011@gmail.com']




*** Keywords ***
Get Email Adress Of Account
     Wait Until Element Is Visible    ${ACCOUNT_EMAIL}
     ${text}=  Get Text               ${ACCOUNT_EMAIL}
     [Return]  ${text}




