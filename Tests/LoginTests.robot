*** Settings ***
Suite Setup       Open browser    https://demo.nopcommerce.com/    chrome
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          ../Locators/LoginVariables.robot
Resource          ../Locators/TestDataVariables.robot
Resource          ../Keywords/RegistrationKeywords.robot
Resource          ../Locators/RegistrationVariables.robot
Resource          ../Keywords/LoginKeywords.robot

*** Test Cases ***
Check if login page is accesible
    access the login page

login with valid credencials
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    verify that user is logged in

login with valid email invalid pass
    access the login page
    fill in email and pass    ${valid_email}    ${invalid_pass}
    click the log in button
    verify that user can't log in with invalid pass

login with invalid email and valid pass
    access the login page
    fill in email and pass    ${invalid_email}    ${valid_pass}
    click the log in button
    verify that user can't log in with invalid email

login with invalid both email and pass
    access the login page
    fill in email and pass    ${invalid_email}    ${invalid_pass}
    click the log in button
    verify that user can't log in with invalid email

login with empty email and pass
    access the login page
    fill in email and pass    ${EMPTY}    ${EMPTY}
    click the log in button
    verify that user can't log in without email

login with valid email and empty pass
    access the login page
    fill in email and pass    ${valid_email}    ${EMPTY}
    click the log in button
    verify that user can't log in with invalid pass

login with empty email and valid pass
    access the login page
    fill in email and pass    ${EMPTY}    ${valid_pass}
    click the log in button
    verify that user can't log in without email

Test if remember me? is working
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the remember me button
    click the log in button
    click the log out button
    access the login page
    verify that remember me button works
