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
    And a success message appears


Creating a directory via cms
    Given a user is logged in the cms
    When a user creates a directory

Regional Location configs did not change
    Given a user logs in the cms
    Then a user opens a regional location config page










#Create "free" event directory listing via api
#    Get password grant-type token






