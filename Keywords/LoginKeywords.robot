*** Keywords ***
access the login page
    Wait Until Element Is Visible    ${login_buton}
    Click Element    ${login_buton}
    Wait Until Element Is Visible    ${login_email_input}    20

click the log in button
    Wait Until Element Is Visible    ${finish_login}
    Click Element    ${finish_login}

click the remember me button
    Click Element    ${remeberme_button}

click the log out button
    Wait Until Element Is Visible    ${logout_button}    20
    Click Element    ${logout_button}

verify that remember me button works
    Wait Until Element Contains    ${login_email_input}    vgulab@hotmail.com    20

verify that user is logged in
    Wait Until Element Is Visible    ${logout_button}    10

verify that user can't log in with invalid pass
    Wait Until Element Contains    ${login_error_msg}    Login was unsuccessful.    20

verify that user can't log in without email
    Wait Until Element Contains    ${login_email_error}    Please enter your email

verify that user can't log in with invalid email
    Wait Until Element Contains    ${login_email_error}    Wrong email
