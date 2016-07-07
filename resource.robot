*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Libraries.
Variables         stgconfigs.py
Variables         elementlocations.py
Library           Selenium2Library
Library           FakerLibrary
Library           ExtendedRequestsLibrary
Library           HttpLibrary.HTTP
Library           ImapLibrary

*** Variables ***
${SERVER}         stg.angloinfo.com
${BROWSER}        Chrome
${DELAY}          0
${ERROR URL}      http://${SERVER}/error.html
${RESPONSEBODY}

*** Keywords ***

# Phrases

A user is logged in
    # equivalent phrase
    A valid user logs in

A valid user logs in
    Open Browser    &{RESOURCE}[signin]    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Title Should Be    Login
    Input Text    formEmail   &{VALIDUSER}[username]
    Input Text    formPassword    &{VALIDUSER}[password]
    Click Button    xpath=//*[@id="form-signin"]/button
    Wait Until Page Contains Element    xpath=${display_name_location}   20
    Element Text Should Be    xpath=${display_name_location}    &{VALIDUSER}[displayname]

A user is in the "${pagename}" page
    Open Browser    &{RESOURCE}[${pagename}]    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

A valid credential is reset
    Input text   formEmail    &{USERFORRESET}[username]
    Click Button    xpath=${send_reset_link_xpath}
    Wait until element is visible    xpath=${reset_link_sent_confirmation_box_xpath}   20

A reset email is recieved
    Open Mailbox    host=imap.gmail.com    user=ainfo1001@gmail.com    password=anglo123
    ${LATEST}=    Wait for email    subject=Your AngloInfo Password Reset Link    sender=noreply@angloinfo.com
    @{RESET LINKS}=   get links from email    ${LATEST}
    Mark Email as Read    ${LATEST}




















User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials

Get password grant-type token
    Create Http Context    stgapi.angloinfo.com    https
    Set Request Header   Content-Type    application/x-www-form-urlencoded
    Set Request Body    grant_type=password&client_id=1&client_secret=coapp&username=ainfo1001%2Bstg101%40gmail.com&password=Anglo123
    Post    /oauth/access_token
    ${RESPONSEBODY}=    Get Response Body
    ${ACCESSTOKEN}=    Get Json Value    ${RESPONSEBODY}    /access_token
    Log to Console    ${ACCESSTOKEN}

the login page is Open
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open


Login Page Should Be Open
    Title Should Be    Login

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open
    Log to Console ${LOGIN URL}

Input Username
    [Arguments]    ${username}
    Input Text    formEmail   ${username}

Input Password
    [Arguments]    ${password}
    Input Text    formPassword    ${password}

Submit Credentials
    Click Button    xpath=//*[@id="form-signin"]/button

Dashboard Page Should Be Open
    ${Test}=    Paragraphs
    Location Should Be    ${DASHBOARD URL}
    Element Text Should Be    xpath=//*[@id="profile-img-container"]/h1/span[1]    ${DISPLAY NAME}
    Log to Console  ${Test}