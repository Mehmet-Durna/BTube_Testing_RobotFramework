*** Settings ***
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/signInPage.robot
Resource  ../pageObjects/profilePage.robot

Suite Setup       Open My Website
Suite Teardown    Close browser
Test Setup        Go To Signin Page


*** Test Cases ***
Log In With Correct Email and Password
     Log In With Account    mehmetdurna0011@gmail.com  yunus033
     sleep    3s
     page should contain button    ${PROFILE_BUTTON}
     click on sign out button


Log In With Correct Email and Wrong Password
     Log In With Account    mehmetdurna0011@gmail.com  yunus032
     sleep    3s
     ${errorMessage}=  Get Login Error Message
     should contain    ${errorMessage}    Email or password incorrect.


Check the User Information Which Is In My Profile Page
      Log In With Account    mehmetdurna0011@gmail.com  yunus033
      sleep    5s
      go to profile page
      ${emailAdress}=    Get Email Adress Of Account
      should contain    ${emailAdress}    mehmetdurna0011@gmail.com
      ${firstname}=      Get First Name Of Account
      should contain    ${firstname}      Mehmet
      ${lastname}=    Get Last Name Of Account
      should contain    ${lastname}       Durna













