*** Settings ***
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/signInPage.robot
Resource  ../pageObjects/profilePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Test Setup  Go To Signin Page

*** Test Cases ***
Sign In With Existing Account
     Log In With Account    mehmetdurna0011@gmail.com  yunus033
     sleep    5s
     go to profile page
     ${emailAdress}=    Get Email Adress Of Account
     should contain    ${emailAdress}    mehmetdurna0011@gmail.com

















