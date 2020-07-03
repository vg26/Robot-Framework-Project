*** Settings ***
Suite Setup       Open browser    https://demo.nopcommerce.com/    chrome
Suite Teardown    Close browser
Library           SeleniumLibrary
Resource          ../Locators/TestDataVariables.robot
Resource          ../Locators/ProductDetailsVariables.robot
Resource          ../Locators/ProductsListVariables.robot
Resource          ../Locators/ShoppingCartVariables.robot
Resource          ../Keywords/ProductDetailsKeywords.robot
Resource          ../Keywords/ProductListsKeywords.robot
Resource          ../Keywords/CheckoutKeywords.robot
Resource          ../Locators/CheckoutVariables.robot

*** Test Cases ***
Access checkout address page as guest
    navigate to software category
    add to cart the Windows 8 product
    CheckoutKeywords.click the add to cart button
    click the term of service button
    click the checkout button
    click the checkout as guest button
    verify that you are on checkout page

Check if error message is displayed when user enters invalid data in any of the required filed in billing address while checking out as guest
    navigate to software category
    add to cart the Windows 8 product
    CheckoutKeywords.click the add to cart button
    click the term of service button
    click the checkout button
    click the checkout as guest button
    verify that you are on checkout page
    fill in the info for checkout    ${user_firstname}    ${invalid_email}
    click continue button on checkout
    verify error msg is displayed

Check if error message is displayed when user doesn't enter data in all of the required filed in billing address while checking out as guest
    navigate to software category
    add to cart the Windows 8 product
    CheckoutKeywords.click the add to cart button
    click the term of service button
    click the checkout button
    click the checkout as guest button
    verify that you are on checkout page
    sleep    5
    click continue button on checkout
    verify error msg is displayed

Checkout as guest and pay with: Credit Card Enter valid credit card information
    navigate to software category
    add to cart the Windows 8 product
    CheckoutKeywords.click the add to cart button
    click the term of service button
    click the checkout button
    click the checkout as guest button
    verify that you are on checkout page
    fill in the info for checkout    ${user_firstname}    ${valid_email}
    click continue button on checkout
    click on second continue button
    wait until mastercard button is visible
    select mastercard
    click on third continue button
    fill in creditcard info    ${valid_creditcard}
    click on fourth continue button
    click on confirm order
    verify that order is processed

Checkout as guest and pay with: Check / Money order
    navigate to software category
    add to cart the Windows 8 product
    CheckoutKeywords.click the add to cart button
    click the term of service button
    click the checkout button
    click the checkout as guest button
    verify that you are on checkout page
    fill in the info for checkout    ${user_firstname}    ${valid_email}
    click continue button on checkout
    click on second continue button
    wait for third continue button to be visible
    click on third continue button
    wait for fourth continue button to be visible
    click on fourth continue button
    click on confirm order
    verify that order is processed

Checkout as guest and pay with: Credit Card Enter invalid credit card information
    navigate to software category
    add to cart the Windows 8 product
    CheckoutKeywords.click the add to cart button
    click the term of service button
    click the checkout button
    click the checkout as guest button
    verify that you are on checkout page
    fill in the info for checkout    ${user_firstname}    ${valid_email}
    click continue button on checkout
    click on second continue button
    wait until mastercard button is visible
    select mastercard
    click on third continue button
    fill in creditcard info    ${invalid_creditcard}
    click on fourth continue button
    verify that credit card is invalid

Checkout as guest and pay with: Credit Card Enter empty credit card information
    navigate to software category
    add to cart the Windows 8 product
    CheckoutKeywords.click the add to cart button
    click the term of service button
    click the checkout button
    click the checkout as guest button
    verify that you are on checkout page
    fill in the info for checkout    ${user_firstname}    ${valid_email}
    click continue button on checkout
    click on second continue button
    wait until mastercard button is visible
    select mastercard
    click on third continue button
    fill in creditcard info    ${EMPTY}
    click on fourth continue button
    verify that credit card is invalid

Check if any of the checkout sections are accesible again durring checkout process
    navigate to software category
    add to cart the Windows 8 product
    CheckoutKeywords.click the add to cart button
    click the term of service button
    click the checkout button
    click the checkout as guest button
    verify that you are on checkout page
    fill in the info for checkout    ${user_firstname}    ${valid_email}
    click continue button on checkout
    click on second continue button
    wait until mastercard button is visible
    select mastercard
    wait for third continue button to be visible
    click on third continue button
    fill in creditcard info    ${valid_creditcard}
    wait for fourth continue button to be visible
    click on fourth continue button
    click the Back button
    wait for fourth continue button to be visible
