*** Settings ***
Suite Setup       Open browser    https://demo.nopcommerce.com/    chrome
Suite Teardown    Close browser
Library           SeleniumLibrary
Resource          ../Keywords/ProductListsKeywords.robot
Resource          ../Keywords/ProductDetailsKeywords.robot
Resource          ../Locators/TestDataVariables.robot
Resource          ../Locators/ProductDetailsVariables.robot
Resource          ../Locators/ProductsListVariables.robot
Library           String
Resource          ../Locators/WishlistVariables.robot
Resource          ../Keywords/WishlistKeywords.robot

*** Test Cases ***
Verify that added product is present on the wishlist page
    navigate to the books category
    add book to wishlist
    confirm that there is bar notification msg

Check if the same product it's possible to be added to wish list two and more times
    navigate to the books category
    add book to wishlist
    confirm that there is bar notification msg
    go to wishlist
    navigate to the books category
    add book to wishlist
    go to wishlist
    verify that product quantity is 2

Access the wish list from the footer menu
    go to wishlist
    verify that you are on wishlist page

Access the added product details from the wish list by clicking the image
    navigate to the books category
    add book to wishlist
    confirm that there is bar notification msg
    go to wishlist
    click on product image and verify it shows product details

Access the added product details from the wish list by clicking the product name
    navigate to the books category
    add book to wishlist
    confirm that there is bar notification msg
    go to wishlist
    click on product title and verify it shows product details
