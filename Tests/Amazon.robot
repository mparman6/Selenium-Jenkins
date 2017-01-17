*** Settings ***
Documentation   This is some basic info about the whole suite
Resource       ../Resources/Amazon.robot
Resource       ../Resources/Common.robot
Test Setup     Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  ie
${REMOTE_URL} =  http://mparman:e21280dd-4539-4822-98b7-231606c11ffc@ondemand.saucelabs.com:80/wd/hub
# ${DESIRED_CAPABILITIES} =  name:Win7 + IE 11,platform:Windows 7,browserName:internet explorer,version:11.0


*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about searching
    [Tags]  Smoke
    Amazon.Search for Products

User must sign in to check out
    [Documentation]  This is some basic info about checking out
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout

