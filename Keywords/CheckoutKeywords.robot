*** Keywords ***
navigate to software category
    Wait Until Element Is Visible    ${computes_category}
    Click Element    ${computes_category}
    Wait Until Element Is Visible    ${software_category}
    Click Element    ${software_category}

add to cart the Windows 8 product
    Wait Until Element Is Visible    ${windows_8_addtocart}
    Click Element    ${windows_8_addtocart}

click the add to cart button
    Click Element    ${addtocartbutton}

click the term of service button
    Wait Until Element Is Visible    ${term_of_service_button}
    Click Element    ${term_of_service_button}

click the checkout button
    Click Element    ${checkout_button}

click the checkout as guest button
    Wait Until Element Is Visible    ${chechout_as_guest_button}
    Click Element    ${chechout_as_guest_button}

verify that you are on checkout page
    Wait Until Element Is Visible    ${checkuot_page}

fill in the info for checkout
    [Arguments]    ${firstname_arg}    ${email_checkout_arg}
    Wait Until Element Is Visible    ${billing_firstname}
    Input Text    ${billing_firstname}    ${firstname_arg}
    Input Text    ${billing_lastname}    ${user_lastname}
    Input Text    ${billing_email}    ${email_checkout_arg}
    Select From List By Value    ${billing_country}    11
    Input Text    ${billing_city}    ${city}
    Input Text    ${billing_address}    ${street_address}
    Input Text    ${billing_zip}    ${zip}
    Input Text    ${billing_phone}    ${phone_number}

click continue button on checkout
    Click Element    ${continue_button_checkout}

verify error msg is displayed
    Wait Until Element Is Visible    ${error_billing}

click on second continue button
    Wait Until Element Is Visible    ${continue_button_2}
    Click Element    ${continue_button_2}

select mastercard
    Click Element    ${mastercard_button}

click on third continue button
    Click Element    ${continue_button_3}

fill in creditcard info
    [Arguments]    ${creditcard_arg}
    Wait Until Element Is Visible    ${creditcard_type}
    Select From List By Value    ${creditcard_type}    MasterCard
    Input Text    ${cardholder_name}    Ivan Ivanov
    Input Text    ${card_number}    ${creditcard_arg}
    Select From List By Value    ${creditcard_expire_month}    1
    Select From List By Value    ${creditcard_expire_year}    2024
    Input Text    ${creditcard_code}    164

click on fourth continue button
    Click Element    ${continue_button_4}

click on confirm order
    Wait Until Element Is Visible    ${confirm_order_button}
    Click Element    ${confirm_order_button}

verify that order is processed
    Wait Until Element Contains    ${order_confirmed_msg}    Your order has been successfully processed!

verify that credit card is invalid
    Wait Until Element Contains    ${wrong_creditcard_msg}    Wrong card number

wait for third continue button to be visible
    Wait Until Element Is Visible    ${continue_button_3}

wait for fourth continue button to be visible
    Wait Until Element Is Visible    ${continue_button_4}

wait until mastercard button is visible
    Wait Until Element Is Visible    ${mastercard_button}

click the Back button
    Wait Until Element Is Visible    ${back_button}
    Click Element    ${back_button}
