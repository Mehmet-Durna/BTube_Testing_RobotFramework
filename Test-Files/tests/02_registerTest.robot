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
    fill the register fields
    click join us

Register by filling every field but without firstname
    go to create acount page from sign in page
    sleep  5s
    fill the register fields
    clear first name field
    click join us
    check if first name field is empty



#Register without password
#    Create Account  someaddress@provider.com
#    ${errorMessage}=  Get Create Account Error Message
#    Should Contain  ${errorMessage}  Please enter an account password
