*** Settings ***
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/signInPage.robot
Resource  ../pageObjects/createAccountPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Test Setup  Go To Signin Page

*** Test Cases ***

Register by filling every field
    go to create acount page from sign in page
    sleep  5s
    fill the register fields    mehmet    dr    mehmetdrss01@gmail.com    yunus033
    click join us
    sleep    3s
    go to signin page
    Log In With Account    mehmetdrss01@gmail.com    yunus033
    sleep    3s
    page should contain button    ${PROFILE_BUTTON}
    click on sign out button



Register by filling every field but without firstname
    go to create acount page from sign in page
    sleep  5s
    fill the register fields     mehmet    dr    mehmetdrss01@gmail.com    yunus033
    clear first name field
    click join us
    check if first name field is empty
    

