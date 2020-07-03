*** Settings ***
Suite Setup       Open browser    https://demo.nopcommerce.com/    chrome
Suite Teardown    Close browser
Library           SeleniumLibrary
Resource          ../Locators/LoginVariables.robot
Resource          ../Locators/ProductsListVariables.robot
Resource          ../Keywords/LoginKeywords.robot
Resource          ../Keywords/ProductListsKeywords.robot
Resource          ../Keywords/RegistrationKeywords.robot
Resource          ../Locators/RegistrationVariables.robot
Resource          ../Locators/TestDataVariables.robot
Resource          ../Locators/ProductDetailsVariables.robot
Resource          ../Keywords/ProductDetailsKeywords.robot

*** Test Cases ***
Open product details for a product
    navigate to notebooks category
    navigate to asus notebook
    verify that user can see products specifications

Write and submit review for product without login in
    navigate to camera category
    navigate to leica camera
    click the add review button
    verify that only registred users can write reviews

Write and submit review for product with login in first
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    verify that user is logged in
    navigate to camera category
    navigate to leica camera
    click the add review button
    fill in the review fields and send the review
    verify that review is successfully added

Set review helpfulness as guest
    navigate to camera category
    navigate to leica camera
    click the add review button
    verify that only registred users can write reviews

Set review helpfulness logged in
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    verify that user is logged in
    navigate to camera category
    navigate to leica camera
    click the add review button
    set review helpfulness and verify

Check the Share product functionality without logging in
    navigate to books category
    navigate to pride and prejudice product
    click the email to friend button
    fill in the ''Email to friend'' fields and send it
    verify that only registred users can use email to friend feature

Check the Share product functionality with logged in user
    access the login page
    fill in email and pass    ${valid_email}    ${valid_pass}
    click the log in button
    verify that user is logged in
    navigate to books category
    navigate to pride and prejudice product
    click the email to friend button
    fill in the ''Email to friend'' fields and send it
    verify that the msg has been sent

Check custom configuration for a product by selecting all of the listed choices
    navigate to desktop category
    navigate to build your computer
    select all the options for building your computer
    click the add to cart button
    verify that the product has been added to cart

Check custom configuration for a product by not selecting anything and try to add to cart
    navigate to desktop category
    navigate to build your computer
    click the add to cart button
    confirm that user get msg to select hdd

Check if larger image is displayed from the same product by clicking on the product image
    navigate to notebooks category
    navigate to asus notebook
    click on image to show larger image
    verify that larger image is displayed

Test social sharring button
    navigate to notebooks category
    navigate to asus notebook
    click the post to fb button and confirm new window opens
