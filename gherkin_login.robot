*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
#Valid Login
#    Given browser is opened to login page
#    When user "ainfo1001+stg101@gmail.com" logs in with password "Anglo123"
#    Then dashboard page should be open

Api Test
    Get password grant-type token

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials
