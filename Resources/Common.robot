*** Settings ***
Library  Selenium2Library
Library  ../Custom Libraries/Saucelabs.py

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser          about:blank  ${BROWSER}  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
    Maximize Browser Window

End Web Test
    # this line updates the test cae name, result, and tags in the SauceLabs.com UI
    # after the test case has completed but BEFORE closing the browser
    Run keyword if   '${REMOTE_URL}' != ''
    ...  Update Saucelabs Test Result
    ...  ${SUITE_NAME}: ${TEST_NAME}
    ...  ${TEST_STATUS}  ${TEST_TAGS}  ${REMOTE_URL}
    Close Browser