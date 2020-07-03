*** Variables ***
${register_button}    class:ico-register
${gender}         //*[@id="gender-male"]
${firstname_input}    //*[@id="FirstName"]
${lastname_input}    //*[@id="LastName"]
${select_date}    name:DateOfBirthDay
${select_month}    name:DateOfBirthMonth
${select_year}    name:DateOfBirthYear
${email_input}    //*[@id="Email"]
${input_pass}     //*[@id="Password"]
${confirm_pass}    //*[@id="ConfirmPassword"]
${finish_registration}    //*[@id="register-button"]
${registration_error_msg}    //div[contains(@class,'page registration-result-page')]
${wrong_email_error}    //*[@id="Email-error"]
${existing_email_error}    //div[contains(@class,'validation-summary-errors')]
${confirm_pass_error}    //*[@id="ConfirmPassword-error"]
${pass_rules_error}    //*[@id="Password-error"]/p
${firstname_error}    //*[@id="FirstName-error"]
${lastname_error}    //*[@id="LastName-error"]
