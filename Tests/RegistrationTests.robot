*** Settings ***
Suite Setup       Open browser    https://demo.nopcommerce.com/    chrome
Suite Teardown    Close browser
Library           SeleniumLibrary
Resource          ../Locators/RegistrationVariables.robot
Resource          ../Locators/TestDataVariables.robot
Resource          ../Keywords/RegistrationKeywords.robot

*** Test Cases ***
check if registration page is accesible
    access the registration page

registration with valid credentials
    access the registration page
    fill in the first and last name of new user    ${user_firstname}    ${user_lastname}
    select date, month and year of birth
    fill in email and pass    ${valid_email}    ${valid_pass}
    confirm the password    ${valid_pass}
    click finish registration
    verify that registration is succecfull

register with invalid email
    access the registration page
    fill in the first and last name of new user    ${user_firstname}    ${user_lastname}
    select date, month and year of birth
    fill in email and pass    ${invalid_email}    ${valid_pass}
    confirm the password    ${valid_pass}
    click finish registration
    verify that you can't register with invalid email

register with existing mail
    access the registration page
    fill in the first and last name of new user    ${user_firstname}    ${user_lastname}
    select date, month and year of birth
    fill in email and pass    ${valid_email}    ${valid_pass}
    confirm the password    ${valid_pass}
    click finish registration
    verify that you can't register with existing email

register with diffrent pass and confirm pass
    access the registration page
    fill in the first and last name of new user    ${user_firstname}    ${user_lastname}
    select date, month and year of birth
    fill in email and pass    ${valid_email}    ${valid_pass}
    confirm the password    ${invalid_pass}
    click finish registration
    verify that can't register without both pass and confirm pass

register with empty confirm pass field
    access the registration page
    fill in the first and last name of new user    ${user_firstname}    ${user_lastname}
    select date, month and year of birth
    fill in email and pass    ${valid_email}    ${valid_pass}
    confirm the password    ${EMPTY}
    click finish registration
    verify that can't register without pass

register with empty pass and filled confirm pass field
    access the registration page
    fill in the first and last name of new user    ${user_firstname}    ${user_lastname}
    select date, month and year of birth
    fill in email and pass    ${valid_email}    ${EMPTY}
    confirm the password    ${valid_pass}
    click finish registration
    verify that can't register without both pass and confirm pass

register with empty both pass and confirm pass fields
    access the registration page
    fill in the first and last name of new user    ${user_firstname}    ${user_lastname}
    select date, month and year of birth
    fill in email and pass    ${valid_email}    ${EMPTY}
    confirm the password    ${EMPTY}
    click finish registration
    verify that can't register without pass

register with invalid pass
    access the registration page
    fill in the first and last name of new user    ${user_firstname}    ${user_lastname}
    select date, month and year of birth
    fill in email and pass    ${valid_email}    ${invalid_pass}
    confirm the password    ${invalid_pass} \
    click finish registration
    confirm that pass must be at least 6 characters

register with empty first name field
    access the registration page
    fill in the first and last name of new user    ${EMPTY}    ${user_lastname}
    select date, month and year of birth
    fill in email and pass    ${valid_email}    ${valid_pass}
    confirm the password    ${valid_pass}
    click finish registration
    verify that can't register without first name

register with empty last name field
    access the registration page
    fill in the first and last name of new user    ${user_firstname}    ${EMPTY}
    select date, month and year of birth
    fill in email and pass    ${valid_email}    ${valid_pass}
    confirm the password    ${valid_pass}
    click finish registration
    verify that can't register without last name
