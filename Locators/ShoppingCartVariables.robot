*** Variables ***
${addtocartbutton}    //*[@id="topcartlink"]/a/span[1]
${success_order_message}    Your order has been successfully processed!
${terms_button}    //*[@id="termsofservice"]
${checkout_button}    //*[@id="checkout"]
${billing_button}    //*[@id="billing-buttons-container"]/input
${shipping_button}    //*[@id="shipping-method-buttons-container"]/input
${confirm_order}    //*[@id="confirm-order-buttons-container"]/input
${payment_method}    //*[@id="payment-method-buttons-container"]/input
${payment_info}    //*[@id="payment-info-buttons-container"]/input
${remove_from_cart}    //*[@name="removefromcart"]
${update_cart}    //*[@id="shopping-cart-form"]/div[2]/div[1]/input[1]
${number_of_items}    ${EMPTY}
${text_from_cart}    ${EMPTY}
${i}              ${EMPTY}
${continue_shopping_button}    //*[@id="shopping-cart-form"]/div[2]/div[1]/input[2]
${terms_read_button}    id:read-terms
${open_terms}     id:ui-id-2
${add_to_cart_dropdown}    //*[@id="flyout-cart"]/div/div[4]/input
${confirm_you_are_on_cart_page}    //div[6]/div[3]/div/div/div/div[1]
${cart_empty_dropdown}    //*[@id="flyout-cart"]/div/div
${checkout_price}    //*[@id="shopping-cart-form"]/div[3]/div[2]/div[1]/table/tbody/tr[4]/td[2]/span/strong
${gift_wrap_option}    id:checkout_attribute_1
