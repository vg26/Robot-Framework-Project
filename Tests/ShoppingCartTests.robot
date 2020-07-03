*** Settings ***
Suite Setup       Open browser    https://demo.nopcommerce.com/    chrome
Suite Teardown    Close browser
Library           SeleniumLibrary
Library           String
Resource          ../Locators/ShoppingCartVariables.robot
Resource          ../Locators/TestDataVariables.robot
Resource          ../Locators/ProductDetailsVariables.robot
Resource          ../Locators/ProductsListVariables.robot
Resource          ../Keywords/ProductDetailsKeywords.robot
Resource          ../Keywords/ProductListsKeywords.robot
Resource          ../Keywords/LoginKeywords.robot
Resource          ../Locators/LoginVariables.robot
Resource          ../Locators/RegistrationVariables.robot
Resource          ../Keywords/RegistrationKeywords.robot
Resource          ../Locators/CheckoutVariables.robot
Resource          ../Keywords/CheckoutKeywords.robot
Resource          ../Keywords/ShoppingCartKeywords.robot
Resource          ../Locators/ShoppingCartVariables.robot

*** Test Cases ***
Add product to cart
    navigate to camera category
    click on the nikon d5500 product
    input product quantity and add to cart
    confirm that there is bar notification msg

Remove product from Cart by selecting remove
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    verify that user is logged in
    empty the cart by removing items

Enter multiple products of different types
    navigate to camera category
    click on the nikon d5500 product
    input product quantity and add to cart
    confirm that there is bar notification msg
    sleep    5
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart

Check the button continue shopping leads back to products page
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart
    wait until bar notification is gone
    CheckoutKeywords.click the add to cart button
    click the continue shopping button and verify it takes you to product page

Check if the Gift wrapping options adds additional expence if chosen
    empty the cart by removing items
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart
    wait until bar notification is gone
    CheckoutKeywords.click the add to cart button
    verify that selecting the gift wrapping option adds to the price

Test the discount option with empty value
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart
    wait until bar notification is gone
    CheckoutKeywords.click the add to cart button
    input the discount code and verify error msg appears    ${EMPTY}

Test the discount option with invalid coupon
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart
    wait until bar notification is gone
    CheckoutKeywords.click the add to cart button
    input the discount code and verify error msg appears    ${phone_number}

Test the gift card option with empty value
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart
    wait until bar notification is gone
    CheckoutKeywords.click the add to cart button
    input the gift card coupon and verify error msg appears    ${EMPTY}

Test the gift card option with invalid code value
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart
    wait until bar notification is gone
    CheckoutKeywords.click the add to cart button
    input the gift card coupon and verify error msg appears    ${phone_number}

Read the terms of service in the shopping cart
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart
    wait until bar notification is gone
    CheckoutKeywords.click the add to cart button
    read the terms of service
    verify that terms of service are opened

Check the hover functionality of the shopping cart icon when the shoping cart is empty
    empty the cart by removing items
    open dropdown menu on cart
    verify cart is empty from dropdown menu

Check the hover functionality of the shopping cart icon when there is product in the shopping cart
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart
    wait until bar notification is gone
    CheckoutKeywords.click the add to cart button
    open dropdown menu on cart
    click add to cart from dropdown
    verify you get to cart page

Add product to cart as guest
    navigate to software category
    add to cart the Windows 8 product
    verify that the product has been added to cart
