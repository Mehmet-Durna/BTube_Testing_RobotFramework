*** Settings ***
Resource  basePage.robot

*** Variables ***
${First_Name_Txt}=               id:RegisterFirstName
${Last_Name_Txt}=                id:RegisterLastName
${Email_Txt}=                    id:RegisterEmail
${Password_Txt}=                 id:RegisterPassword
${Re_Password_Txt}=              id:RegisterRePassword
${Register_Button}=              id:RegisterButtonComplete


*** Keywords ***


Fill the register fields
       [Arguments]  ${First_Name}=${EMPTY}  ${Last_Name}=${EMPTY}  ${email}=${EMPTY}  ${password}=${EMPTY}
       WAIT UNTIL ELEMENT IS VISIBLE    ${first_name_txt}
       Input Text       ${First_Name_Txt}       ${First_Name}
       Input Text       ${last_name_txt}        ${Last_Name}
       input text       ${email_txt}            ${email}
       Input Text       ${password_txt}         ${password}
       Input Text       ${re_password_txt}      ${password}


click join us
     click button     ${register_button}


Clear first name field
       clear element text    ${first_name_txt}

Check if first name field is empty
     element text should be    ${first_name_txt}    ${EMPTY}
