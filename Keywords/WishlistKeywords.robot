*** Keywords ***
empty wishlist
    Click Element    //div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[3]/a
    Wait Until Element Is Visible    //div[6]/div[3]/div/div/div/div[2]/div[1]/form/div[1]/table/tbody/tr/td[1]/input
    FOR    ${x}    IN RANGE    1    ${number_of_item}+1
        Click Element    (//div[6]/div[3]/div/div/div/div[2]/div[1]/form/div[1]/table/tbody/tr/td[1]/input )[${x}]
    END
    Wait Until Element Is Visible    //div[6]/div[3]/div/div/div/div[2]/div[1]/form/div[2]/input[1]
    Click Element    //div[6]/div[3]/div/div/div/div[2]/div[1]/form/div[2]/input[1]
    Wait Until Page Contains    The wishlist is empty

go to wishlist
    Click Element    ${wishlist_button_footer}

verify that you are on wishlist page
    Wait Until Element Is Visible    ${wishlist_text}

verify that product quantity is 2
    Wait Until Element Is Visible    ${quantity_field_in_wishlist}
    Element Attribute Value Should Be    ${quantity_field_in_wishlist}    value    2

click on product image and verify it shows product details
    Wait Until Element Is Visible    ${pride_prejudice_img}
    Click Element    ${pride_prejudice_img}
    Wait Until Page Contains    Pride and Prejudice is a novel of manners by Jane Austen, first published in 1813.

click on product title and verify it shows product details
    Wait Until Element Is Visible    ${pride_prejudice_title}
    Click Element    ${pride_prejudice_img}
    Wait Until Page Contains    Pride and Prejudice is a novel of manners by Jane Austen, first published in 1813.
