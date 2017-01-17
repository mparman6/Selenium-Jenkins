*** Settings ***
Library  Selenium2Library
Resource  ../Resources/PO/LandingPage.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded

    Input Text                      id=twotabsearchtextbox     Ferrari 458
    Click Button                    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains        results for "Ferrari 458"

Select Product from Search Results
    Click Link                      css=#result_0 a.s-access-detail-page
    Wait Until Page Contains        Back to search results

Add Product to Cart
    Click Button                    id=add-to-cart-button
    Wait Until Page Contains        Added to Cart

Begin Checkout
    Click Link                      xpath=//*[@id="hlb-ptc-btn-native"]
    Page Should Contain Element     xpath=//*[@id="a-page"]/div[1]/div[3]/div/div/form/div/div/div/h1
    Element Text Should Be          xpath=//*[@id="a-page"]/div[1]/div[3]/div/div/form/div/div/div/h1   Sign in