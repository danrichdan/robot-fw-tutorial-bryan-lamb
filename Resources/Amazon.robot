*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Search for Products
    Go To  http://www.amazon.com 
    Wait Until Page Contains  Amazon
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Sleep  3s
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  results for "Ferrari 458"
    Sleep  3s

Select product from Search Results
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains  Back to results

Add Product to Cart
    Click Button    css=#add-to-cart-button
    Sleep  3s
    Click Button    css=input[aria-labelledby='attachSiNoCoverage-announce']
    Sleep  3s
    Wait Until Page Contains    Added to Cart

Begin Checkout
    Click Button  Proceed to checkout
    Page Should Contain Element   tag:h1
    Element Text Should Be  tag:h1  Sign-In

