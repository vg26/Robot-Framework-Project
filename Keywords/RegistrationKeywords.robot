*** Keywords ***
access the registration page
    Wait Until Element Is Visible    ${register_button}    10
    Click Element    ${register_button}
    Wait Until Element Is Visible    ${gender}

fill in the first and last name of new user
    [Arguments]    ${firstname_arg}    ${lastname_arg}
    Input Text    ${firstname_input}    ${firstname_arg}
    input text    ${lastname_input}    ${lastname_arg}

select date, month and year of birth
    Select From List By Value    ${select_date}    ${user_dateofbirth}
    Select From List By Value    ${select_month}    ${user_birth_month}
    Select From List By Value    ${select_year}    ${user_birth_year}

confirm the password
    [Arguments]    ${confirm_pass_arg}
    Input Text    ${confirm_pass}    ${confirm_pass_arg}

fill in email and pass
    [Arguments]    ${email_arg}    ${pass_arg}
    Input text    ${email_input}    ${email_arg}
    Input Text    ${input_pass}    ${pass_arg}

click finish registration
    click element    ${finish_registration}

verify that registration is succecfull
    Wait Until Element Contains    ${registration_error_msg}    Your registration completed

verify that you can't register with invalid email
    Wait Until Element Contains    ${wrong_email_error}    Wrong email

verify that you can't register with existing email
    Wait Until Element Contains    ${existing_email_error}    The specified email already exists

verify that can't register without last name
    Wait Until Element Contains    ${lastname_error}    Last name is required.

verify that can't register without first name
    Wait Until Element Contains    ${firstname_error}    First name is required.

verify that can't register without both pass and confirm pass
    Wait Until Element Contains    ${confirm_pass_error}    The password and confirmation password do not match.

verify that can't register without pass
    Wait Until Element Contains    ${confirm_pass_error}    Password is required.

confirm that pass must be at least 6 characters
    Wait Until Element Contains    ${pass_rules_error}    Password must meet the following rules:
