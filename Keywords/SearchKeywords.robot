*** Keywords ***
input text into search
    [Arguments]    ${search_text_arg}
    Input Text    ${search_field}    ${search_text_arg}

click the search button
    Click Element    ${search_button}

click the search button in the footer
    Click Element    ${search_button_footer}

press the arrow_down+enter keys
    Press Keys    ${auto_suggestion_item}    ARROW_DOWN+ENTER

choose the options in advanced search
    Click Element    ${advanced_search_button}
    Select From List By Value    ${search_category}    3
    Click Element    ${search_subcategories_button}
    Select From List By Value    ${manufacturer_search}    2
    Input Text    ${price_range_from}    1200
    Input Text    ${price_range_to}    1400

click the search subcategory button
    Click Element    ${search_subcaterory}

click search button in advanced search
    Click Element    ${click_search_button}

verify that no products were displayed
    Wait Until Element Contains    ${no_result_in_search}    ${no_products_found_search_msg}

confirm that search bar is visible
    Wait Until Element Is Visible    ${search_bar}

confirm that product with id:sku-20 is visible
    Wait Until Element Is Visible    id:sku-20

confirm that you need at least 3 characters to use search
    Wait Until Element Contains    ${search_results}    Search term minimum length is 3 characters

click the auto suggested item
    Click Element    ${auto_suggestion_item}

auto suggestion item should be visible
    [Arguments]    ${auto_suggestion_arg}
    Wait Until Element Is Visible    ${auto_suggestion_item}

verify that searched product is visible
    [Arguments]    ${searched_product_arg}
    Wait Until Element Contains    ${searched_product_title}    ${searched_product_arg}
