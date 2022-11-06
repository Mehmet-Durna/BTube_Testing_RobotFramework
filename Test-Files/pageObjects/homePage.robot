*** Settings ***
Resource  basePage.robot

*** Variables ***
${SIGNIN_BUTTON}=           id:SignInButton
${MOVIE_CARD}=              xpath://div[@id='Comedy Movies']//img[@id='551804']
${RENT_MOVIE_BUTTON}=       xpath://button[@id='RentMovieButton']
${MOVIE_VIDEO}=             xpath://*[@id="movie_player"]/div[1]/video
${MORE_INFO_LINK}=          xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div[2]/div[2]/div[2]/a
${PROFILE_BUTTON}=          xpath:(//button[normalize-space()='Profile'])[1]
${SignOut_Button}=          xpath:(//button[normalize-space()='Sign out'])[1]

*** Keywords ***
Go To Signin Page
    Maximize Browser Window
    Sleep  10s
    Wait Until Element Is Visible        ${SIGNIN_BUTTON}
    click button    ${SIGNIN_BUTTON}




Go To Profile Page
    wait until element is visible    ${profile_button}
    click button   ${PROFILE_BUTTON}

Click On Sign Out Button
    wait until element is visible    ${signout_button}
    click button    ${SignOut_Button}
