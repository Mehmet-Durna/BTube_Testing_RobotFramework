*** Settings ***
Resource  basePage.robot

*** Variables ***
${SIGNIN_BUTTON}=           id:SignInButton
${MOVIE_CARD}=              xpath://div[@id='Comedy Movies']//img[@id='551804']
${RENT_MOVIE_BUTTON}=       xpath://button[@id='RentMovieButton']
${MOVIE_VIDEO}=             xpath://*[@id="movie_player"]/div[1]/video
${MORE_INFO_LINK}=          xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div[2]/div[2]/div[2]/a
${PROFILE_BUTTON}=          xpath://a[@href='#/profile']//button[@id='OrdersPageButton']


*** Keywords ***
Go To Signin Page
    Maximize Browser Window
    Sleep  10s
    Wait Until Element Is Visible        ${SIGNIN_BUTTON}
    click button    ${SIGNIN_BUTTON}


Open Movie Card
    Wait Until Element Is Visible    ${MOVIE_CARD}
    click element    ${MOVIE_CARD}
    Execute javascript  document.body.style.zoom="70%"
    sleep    5s
    switch window    xpath://*[@id="root"]/div/div[2]/div[1]/div[2]
    WAIT UNTIL ELEMENT IS VISIBLE    ${MORE_INFO_LINK}
    click link    ${MORE_INFO_LINK}
#    Wait Until Element Is Visible    ${RENT_MOVIE_BUTTON}
#    click element    ${RENT_MOVIE_BUTTON}
#    wait until element is visible    ${MOVIE_VIDEO}
#    click element    ${movie_video}


Go To Profile Page
    click button   ${profile_button}
