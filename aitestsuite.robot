*** Settings ***
Documentation     test suite with a mix of gherkin style tests and simple phrases
Resource          resource.robot
Test Teardown     Close Browser


*** Test Cases ***



Valid Login
    A valid user logs in

Forgot password email test
    Given a user is in the "reset" page
    When a valid credential is reset
    Then a reset email is recieved

Posting a discussion
    Given a user is logged in
    And a user opens the "discussions submit" page
    When a user posts a topic



#Create "free" event directory listing via api
#    Get password grant-type token



