*** Settings ***
Documentation     A test suite with Gherkin style tests.
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***



#Valid Login
#    A valid user logs in


Forgot password email test
    Given a user is in the "reset" page
    When a valid credential is reset
    Then a reset email is recieved

Posting a discussion
	Given a user is logged in
	And a user is in the "discussions submit" page




#Create "free" event directory listing via api
#    Get password grant-type token



