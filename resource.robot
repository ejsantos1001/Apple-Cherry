*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
...               keywords mapped to ainfo website
Library           Selenium2Library
Library           FakerLibrary
Library           ExtendedRequestsLibrary
Library           HttpLibrary.HTTP

*** Variables ***
${SERVER}         stg.angloinfo.com
${BROWSER}        Chrome
${DELAY}          0
${VALID USER}     ainfo1001+stg101@gmail.com
${VALID PASSWORD}  Anglo123
${DISPLAY NAME}   ainfotest
${LOGIN URL}      https://stg.angloinfo.com/member/signin
${DASHBOARD URL}  https://stg.angloinfo.com/member/signin
${ERROR URL}      http://${SERVER}/error.html
${RESPONSEBODY}

*** Keywords ***



Get password grant-type token
    Create Http Context    stgapi.angloinfo.com    https
    Set Request Header   Content-Type    application/x-www-form-urlencoded
    Set Request Body    grant_type=password&client_id=1&client_secret=coapp&username=ainfo1001%2Bstg101%40gmail.com&password=Anglo123
    Post    /oauth/access_token
    ${RESPONSEBODY}=    Get Response Body
    ${ACCESSTOKEN}=    Get Json Value    ${RESPONSEBODY}    /access_token
    Log to Console    ${ACCESSTOKEN}
































Open Browser To Login Page
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