*** Settings ***
Resource          resource.robot
Test Teardown     Close Browser



*** Test Cases ***

#login area

Valid Login
    A valid user logs in

Forgot password email test
    GIVEN a user is in the "reset" page
    WHEN a valid credential is reset
    THEN a reset email is recieved

Posting a discussion
    GIVEN a user is logged in
    AND a user opens the "discussions submit" page
    WHEN a user posts a discussion topic
    AND a success message appears

Movies page working
    GIVEN a user is logged in
    AND a user opens the "movies" page
    THEN the movie iframe is displayed

Properties account integration
    GIVEN a user is logged in
    AND a user opens the "property" page
    THEN the user data is picked up by the property site

Creating a directory via cms
    GIVEN a user is logged in the cms
    WHEN a user creates a directory

Regional Location configs did not change
    GIVEN a user logs in the cms
    AND a user opens a regional location config page
    THEN regional location configs should not change

Presence of Content Sponsor and 3 google ads 
    GIVEN a user is logged in
    WHEN a user opens the "classifieds index" page
    THEN the content sponsor widget is visible
    AND ads should be visible
