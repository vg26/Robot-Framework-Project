*** Settings ***
Suite Setup       Open browser    https://demo.nopcommerce.com/    chrome
Suite Teardown    Close browser
Library           SeleniumLibrary
Resource          ../Locators/ProductsListVariables.robot
Resource          ../Locators/TestDataVariables.robot
Resource          ../Keywords/ProductListsKeywords.robot

*** Test Cases ***
Confirm that HP Notebook can be found in computers category and notebooks sub-category.
    navigate to notebooks category
    click on hp envy notebook and confirm it opens product details

Verify the filter option is working
    navigate to notebooks category
    select the wanted filter options
    confirm that samsung series 9 notebook is visible

Check if the button REMOVE FILTER is clearing the filtered choises
    navigate to notebooks category
    select the wanted filter options
    click the remove filter button and confirm it works

Verify the sorting and displaying option on the product page is working correctly
    navigate to notebooks category
    order the product list by price and number of items on page
    click to show next page of results

Verify Add to cart should work properly with availiable products
    navigate to camera category
    click on the nikon d5500 product
    input product quantity and add to cart
    confirm that there is bar notification msg

Verify Add to cart should work properly with unavailiable products
    navigate to camera category
    click the apple icam product
    verify product is out of stock

Verify Add to wish list should work properly with availiable product
    navigate to the books category
    add book to wishlist
    confirm that there is bar notification msg

Verify Add to wish list option should not exist with unavailiable product
    navigate to camera category
    confirm that you can't add apple icam to wishlist

Compare two products
    navigate to cellphone category
    click the htc phone product and add to compare
    click the nokia lumia product and add to compare
    confirm that products are compared

Open product category and subcategory by navigating through the vertical menu
    navigate to books category
    navigate to notebook category using the vertical menu

Test the highlighting on the vertical menu coresponds to the selected category/subcategory
    navigate to notebooks category
    confirm that clicked category is highlighed on vertical menu
