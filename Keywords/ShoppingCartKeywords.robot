*** Keywords ***
empty cart
    Click Element    ${addtocartbutton}
    Wait Until Element Is Visible    ${remove_from_cart}
    FOR    ${i}    IN RANGE    1    ${number_of_items}+1
        Click Element    (${remove_from_cart})[${i}]
    END
    Wait Until Element Is Visible    ${update_cart}
    Click Element    ${update_cart}
    Wait Until Page Contains    Your Shopping Cart is empty

empty the cart by removing items
    ${text_from_cart}    Get Text    //*[@id="topcartlink"]/a/span[2]
    ${number_of_items}    Remove String    ${text_from_cart}    (    )
    Run Keyword If    ${number_of_items}>0    empty cart

wait until bar notification is gone
    Wait Until Element Is Not Visible    ${bar_notification}

click the continue shopping button and verify it takes you to product page
    Click Element    ${continue_shopping_button}
    Wait Until Element Is Visible    ${windows_8_addtocart}

input the discount code and verify error msg appears
    [Arguments]    ${discount_coupon_arg}
    Wait Until Element Is Visible    id:discountcouponcode
    Input Text    id:discountcouponcode    ${discount_coupon_arg}
    Click Element    id:applydiscountcouponcode
    Wait Until Element Is Visible    //*[@id="shopping-cart-form"]/div[3]/div[1]/div/div[1]/div[4]

input the gift card coupon and verify error msg appears
    [Arguments]    ${gift_card_arg}
    Wait Until Element Is Visible    id:giftcardcouponcode
    Input Text    id:giftcardcouponcode    ${gift_card_arg}
    Click Element    id:applygiftcardcouponcode
    Wait Until Element Is Visible    //*[@id="shopping-cart-form"]/div[3]/div[1]/div/div[2]/div[4]

read the terms of service
    Wait Until Element Is Visible    ${terms_read_button}
    Click Element    ${terms_read_button}

verify that terms of service are opened
    Wait Until Element Is Visible    ${open_terms}

open dropdown menu on cart
    Mouse Over    ${addtocartbutton}

verify cart is empty from dropdown menu
    Wait Until Element Is Visible    ${cart_empty_dropdown}

click add to cart from dropdown
    Wait Until Element Is Visible    ${add_to_cart_dropdown}
    Click Element    ${add_to_cart_dropdown}

verify you get to cart page
    Wait Until Element Is Visible    ${confirm_you_are_on_cart_page}

verify that selecting the gift wrapping option adds to the price
    Wait Until Element Contains    ${checkout_price}    $65.00
    Select From List By Value    ${gift_wrap_option}    2
    Wait Until Element Contains    ${checkout_price}    $75.00
