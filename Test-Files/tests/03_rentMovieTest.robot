*** Settings ***
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Test Setup  Go To Signin Page

*** Test Cases ***
Rent A New Movie
     Log In With Account
     Open Movie Card











