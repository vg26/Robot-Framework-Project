*** Keywords ***
navigate to notebooks category
    Click Element    ${computes_category}
    Wait Until Element Is Visible    ${notebooks_category}
    Click Element    ${notebooks_category}

navigate to cellphone category
    Click Element    ${electronics_category}
    Wait Until Element Is Visible    ${cellphones_category}
    Click Element    ${cellphones_category}

navigate to camera category
    Click Element    ${electronics_category}
    Wait Until Element Is Visible    ${camera_category}    20
    Click Element    ${camera_category}

click on hp envy notebook and confirm it opens product details
    Wait Until Element Contains    ${hp_notebook}    ${hp_envy_text}
    Click Element    ${hp_notebook}
    Wait Until Element Contains    ${product_name}    ${hp_envy_text}

select the wanted filter options
    Wait Until Element Is Visible    ${intel_i5}
    Click Element    ${intel_i5}
    Click Element    ${8_gb}

confirm that samsung series 9 notebook is visible
    Wait Until Element Contains    ${producttitle}    Samsung Series 9

click the remove filter button and confirm it works
    Click Element    ${remove_filter}
    Wait Until Element Is Visible    ${intel_i5}

order the product list by price and number of items on page
    Wait Until Element Is Visible    ${order_product_by}
    Select From List By Index    ${order_product_by}    4
    Select From List By Index    ${size_of_page_displayed}    0

click to show next page of results
    Wait Until Element Is Visible    ${next_page}
    Click Element    ${next_page}

click on the nikon d5500 product
    Wait Until Element Is Visible    ${nikon_d5500}
    Click Element    ${nikon_d5500}

click the htc phone product and add to compare
    Wait Until Element Is Visible    ${htc_phone}
    Click Element    ${htc_phone}

click the nokia lumia product and add to compare
    Click Element    ${nokia_lumia}

confirm that you can't add apple icam to wishlist
    Wait Until Element Is Visible    ${apple_icam}
    Wait Until Element Does Not Contain    ${apple_icam_options}    Add to wishlist

confirm that there is bar notification msg
    Wait Until Element Is Visible    ${bar_notification}    20

click the apple icam product
    Wait Until Element Is Visible    ${apple_icam}    20
    Click Element    ${apple_icam}

input product quantity and add to cart
    Input Text    ${product_quantity}    2
    Click Element    ${addtocart_product}

verify product is out of stock
    Wait Until Element Contains    ${stock_availability}    Out of stock

navigate to the books category
    Click Element    ${books_category}

add book to wishlist
    Wait Until Element Is Visible    ${add_book_to_wishlist}
    Click Element    ${add_book_to_wishlist}

confirm that products are compared
    Click Element    ${compare_products_button}
    Wait Until Element Contains    ${compare_products_page}    Compare products

navigate to books category
    Click Element    ${books_category}

navigate to notebook category using the vertical menu
    Click Element    ${vertical_computers_category}
    Wait Until Element Is Visible    ${notebooks_category}
    Click Element    ${vertical_notebooks}
    Wait Until Element Contains    ${hp_notebook}    ${hp_envy_text}

confirm that clicked category is highlighed on vertical menu
    Click Element    ${vertical_jewelry_category}
    Wait Until Element Contains    ${highlighted_category_vertical_menu}    Jewelry
