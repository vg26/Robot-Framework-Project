*** Keywords ***
navigate to desktop category
    Click Element    ${computes_category}
    Wait Until Element Is Visible    ${desktop_category}
    Click Element    ${desktop_category}

navigate to asus notebook
    Wait Until Element Is Visible    ${asus_n55}    20
    Click Element    ${asus_n55}

navigate to leica camera
    Wait Until Element Is Visible    ${leica_camera}
    Click Element    ${leica_camera}

verify that user can see products specifications
    Wait Until Page Contains    Products specifications

click the add review button
    Wait Until Element Is Visible    ${add_review_for_product}
    Click Element    ${add_review_for_product}

verify that only registred users can write reviews
    Wait Until Page Contains    Only registered users can write reviews

fill in the review fields and send the review
    Wait Until Element Is Visible    ${review_title}
    Input Text    ${review_title}    digital camera reviews
    Input Text    ${review_text}    camera is good
    Click Element    ${submit_review_button}

verify that review is successfully added
    Wait Until Page Contains    Product review is successfully added.

set review helpfulness and verify
    Click Element    ${vote_on_review}
    Wait Until Element Is Visible    ${vote_review_msg}

navigate to pride and prejudice product
    Wait Until Element Is Visible    ${pride_prejaduce_product}
    Click Element    ${pride_prejaduce_product}

click the email to friend button
    Wait Until Element Is Visible    ${email_to_friend_button}
    Click Element    ${email_to_friend_button}
    Wait Until Element Is Visible    ${friends_email_field}

fill in the ''Email to friend'' fields and send it
    Input Text    ${friends_email_field}    test1@hi.com
    Input Text    ${your_emaill_address_field}    vgulab@hotmail.com
    Input Text    ${personal_msg_field}    good product
    Click Element    ${send_email_button}

verify that the msg has been sent
    Wait Until Page Contains    Your message has been sent.

verify that only registred users can use email to friend feature
    Wait Until Page Contains    Only registered customers can use email a friend feature

navigate to build your computer
    Wait Until Element Is Visible    ${build_your_computer}
    Click Element    ${build_your_computer}

click the add to cart button
    Click Element    ${add_product_to_cart}

verify that the product has been added to cart
    Wait Until Element Contains    ${bar_notification}    The product has been added to your

confirm that user get msg to select hdd
    Wait Until Element Contains    ${bar_notification}    Please select HDD

select all the options for building your computer
    Wait Until Element Is Visible    ${select_processor}
    Select From List By Value    ${select_processor}    1
    Select From List By Value    ${select_ram}    5
    Click Element    ${select_hdd}

click on image to show larger image
    Wait Until Element Is Visible    id:main-product-img-5
    Click Element    id:main-product-img-5

verify that larger image is displayed
    Wait Until Page Contains    Picture of Asus N551JK-XO076H Laptop

click the post to fb button and confirm new window opens
    Wait Until Element Is Visible    ${share_to_fb_button}
    ${first}    Get Window Handles
    Click Element    ${share_to_fb_button}
    ${second}    Get Window Handles
    ${list1}    Get Length    ${first}
    ${list2}    Get Length    ${second}
    Should Be True    ${list1}<${list2}
    Switch Window    NEW
    Wait Until Element Is Visible    //*[@id="facebook"]/body    20
    Close Window
    Switch Window    MAIN
