*** Settings ***
Suite Setup       Open browser    https://demo.nopcommerce.com/    chrome
Suite Teardown    Close browser
Library           SeleniumLibrary
Resource          ../Locators/SearchVariables.robot
Resource          ../Keywords/SearchKeywords.robot
Resource          ../Locators/TestDataVariables.robot

*** Test Cases ***
Search for existing product
    input text into search    ${nokia_lumia_1020_text}
    click the search button
    verify that searched product is visible    ${nokia_lumia_1020_text}

Search for non-existing product
    input text into search    ${xiaomi_text}
    click the search button
    verify that no products were displayed

Test if search works for a less then 3 character keyword
    input text into search    ${no_text}
    click the search button
    confirm that you need at least 3 characters to use search

Check if auto-suggestion displays suggestions in the search field
    input text into search    ${nokia_lumia_1020_text}
    Sleep    3
    auto suggestion item should be visible    ${nokia_lumia_1020_text}

Test auto-suggestions displayed in the search field
    input text into search    ${nokia_lumia_1020_text}
    Sleep    3
    auto suggestion item should be visible    ${nokia_lumia_1020_text}
    click the auto suggested item
    confirm that product with id:sku-20 is visible

Test if auto-suggestions displayed in the search field are accesible with keyboard arrow key
    input text into search    ${nokia_lumia_1020_text}
    auto suggestion item should be visible    ${EMPTY}
    press the arrow_down+enter keys
    confirm that product with id:sku-20 is visible

Test if the searh is case insensitive
    input text into search    ${nokia_text_small_letters}
    click the search button
    verify that searched product is visible    ${nokia_lumia_1020_text}

Run succesful search using the Advanced searh option
    input text into search    ${laptop_text}
    click the search button
    confirm that search bar is visible
    choose the options in advanced search
    click the search subcategory button
    click search button in advanced search
    verify that searched product is visible    ${hp_spectre_text}

Run unsuccesful search using the Advanced searh option
    input text into search    ${laptop_text}
    click the search button
    confirm that search bar is visible
    choose the options in advanced search
    click search button in advanced search
    verify that no products were displayed

Enter Search page from the link in footer
    click the search button in the footer
    confirm that search bar is visible
