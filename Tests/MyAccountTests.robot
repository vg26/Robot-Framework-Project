*** Settings ***
Suite Setup       Open browser    https://demo.nopcommerce.com/    chrome
Suite Teardown    Close browser
Library           SeleniumLibrary
Resource          ../Locators/LoginVariables.robot
Resource          ../Locators/MyAccountVariables.robot
Resource          ../Locators/TestDataVariables.robot
Resource          ../Keywords/LoginKeywords.robot
Resource          ../Keywords/RegistrationKeywords.robot
Resource          ../Locators/RegistrationVariables.robot
Resource          ../Keywords/MyAccountKeywords.robot

*** Test Cases ***
Access my account page
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    navigate to and verify \ my account

Edit phone number in my account
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    navigate to and verify \ my account
    change the phone number and verify

Check if Downloadable product link leads to My account - Downloadable products
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    navigate to and verify \ my account
    navigate to downloadable products

Check if Back in stock subscriptions link leads to My account - Back in stock subscriptions section
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    navigate to and verify \ my account
    navigate to stock subscriptions

Check if Reward points link leads to My account - My account - Reward points section
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    navigate to and verify \ my account
    navigate to reward points

Check if Change password link leads to My account - Change password section
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    navigate to and verify \ my account
    navigate to change pass

Check if My product reviews link leads to My account - My product reviews section
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    navigate to and verify \ my account
    navigate to my product reviews
