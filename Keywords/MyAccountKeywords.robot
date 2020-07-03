*** Keywords ***
navigate to and verify \ my account
    Wait Until Element Is Visible    ${my_account}
    Click Element    ${my_account}
    Wait Until Page Contains    My account - Customer info

change the phone number and verify
    Click Element    ${addresses_in_myaccount}
    Wait Until Element Is Visible    ${edit_address}
    Click Element    ${edit_address}
    Input Text    ${phonenumber_in_address}    1111111111
    Click Element    ${save_address_button}
    Wait Until Page Contains    My account - Addresses

navigate to downloadable products
    Click Element    ${downloadable_products}
    Wait Until Page Contains    My account - Downloadable products

navigate to stock subscriptions
    Click Element    ${stock_subscriptions}
    Wait Until Page Contains    My account - Back in stock subscriptions

navigate to reward points
    Click Element    ${reward_points}
    Wait Until Page Contains    My account - Reward points

navigate to change pass
    Click Element    ${change_password_menu}
    Wait Until Page Contains    My account - Change password

navigate to my product reviews
    Click Element    ${my_product_reviews}
    Wait Until Page Contains    My account - My product reviews
