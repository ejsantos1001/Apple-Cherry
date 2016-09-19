*** Settings ***
Variables         data.py
Variables         elementlocations.py
Library           Selenium2Library
Library           ExtendedRequestsLibrary
Library           HttpLibrary.HTTP
Library           ImapLibrary
Library           FakerLibrary

*** Variables ***
${SERVER}         stg.angloinfo.com
${BROWSER}        chrome
${DELAY}          0


*** Keywords ***
A user is logged in
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

A user is logged in the cms
    A user logs in the cms

A user logs in the cms
    Open Browser    &{RESOURCE}[cmssignin]    ${BROWSER}
    Maximize Browser Window
    Input Text    email   &{CMSUSER}[username]
    Input Text    password   &{CMSuser}[password]
    Click Button   css=${login_button}

A user creates a directory
    A user opens the cms content dropdown
    Click Link                              css=${content_dropdown_directory}
    Wait until spinner is finished for "60" seconds
    Wait until page contains element        xpath=${level1_category}   10
    Click element                           xpath=${level1_category}
    Wait until element is visible           xpath=${level2_category}   10
    Click element                           xpath=${level2_category}
    Wait until spinner is finished for "60" seconds
    Wait until page contains element        xpath=${add_listing_button}
    Click element                           xpath=${add_listing_button}
    Wait until page contains element        id=${new_listing_name}   10
    Wait until element is visible           id=${new_listing_name}   10
    Input Text                              id=${new_listing_name}   &{DIRECTORYLISTING}[name]
    Execute javascript   document.querySelector('${content_box1}').innerText='&{DIRECTORYLISTING}[content1]'
    Execute javascript   document.querySelector('${content_box2}').innterText='&{DIRECTORYLISTING}[content2]'
    Click button                            css=${slug_button}
    Click button                            css=${save_button}


A user creates a classifieds
    A user opens the cms content dropdown
    Clink Link                              css=${content_dropdown_classifieds_option_css_locator}
    Wait until spinner is finished for "60" seconds


A user opens the cms content dropdown
    Click Link                              link=${region_dropdown}
    Click Link                              link=French Riviera
    Wait until spinner is finished for "60" seconds
    Click Link                              xpath=${content_dropdown}

A user opens a regional location config page
    Click Link                              xpath=${configurtion_dropdown_button}
    Click Link                              xpath=${configuration_dropdown_location_managment}
    Wait until spinner is finished for "60" seconds
    Wait until element is visible           css=${barcelona_element_css}
    Click Link                              css=${barcelona_element_css}






regional location configs should not change

    ${config_type_value}                 Execute javascript      var value=document.querySelector('${eloc_location_management_type}').value;  return value;
    Should be equal                      ${config_type_value}   &{locationdata}[type]

    ${url_type_value}                    Execute javascript      var value=document.querySelector('${eloc_location_management_url }').value;  return value;
    Should be equal                      ${url_type_value}       &{locationdata}[url]

    ${name_type_value}                   Execute javascript      var value=document.querySelector('${eloc_location_management_name}').value;  return value;
    Should be equal                      ${name_type_value}       &{locationdata}[name]

    ${currency_type_value}               Execute javascript       var value=document.querySelector('${eloc_location_management_currency}').value;  return value;
    Should be equal                      ${currency_type_value}    &{locationdata}[currency]

    ${contactname_type_value}            Execute javascript             var value=document.querySelector('${eloc_location_management_contactname}').value;  return value;
    Should be equal                      ${contactname_type_value}       &{locationdata}[contact_name]

    ${contactaddress_type_value}        Execute Javascript              var value=document.querySelector('${eloc_location_management_contactaddress}').value; return value;
    Should be equal                     ${contactaddress_type_value}    &{locationdata}[contact_address]

    ${number_value}                     Execute Javascript              var value=document.querySelector('${eloc_location_management_number}').value; return value;
    Should be equal                       ${number_value}               &{locationdata}[contact_number]

    ${country_code_value}               Execute Javascript              var value=document.querySelector('${eloc_location_management_countrycode}').value; return value;
    Should be equal                     ${country_code_value}           &{locationdata}[country_code]

    ${language_value}                   Execute Javascript              var value=document.querySelector('${eloc_location_management_language}').value;  return value;
    Should be equal                     ${language_value}               &{locationdata}[language]




regional location menu configs should not change


regional location ugc configs should not change


Wait until spinner is finished for "${time}" seconds
    Wait until element is visible            css=body > div.blockUI.blockOverlay    ${time}
    Wait until element is not visible        css=body > div.blockUI.blockOverlay    ${time}


A user is in the "${pagename}" page
    Open Browser    &{RESOURCE}[${pagename}]    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

A user opens the "${pagename}" page
    Go to  &{RESOURCE}[${pagename}]


A valid credential is reset
    Input text   formEmail    &{USERFORRESET}[username]
    Click Button    xpath=${send_reset_link_xpath}
    Wait until element is visible    xpath=${reset_link_sent_confirmation_box_xpath}   20

A reset email is recieved
    Open Mailbox    host=imap.gmail.com    user=ainfo1001@gmail.com    password=anglo123
    ${LATEST}=    Wait for email    subject=Your AngloInfo Password Reset Link    sender=noreply@angloinfo.com
    @{RESET LINKS}=   get links from email    ${LATEST}
    Mark Email as Read    ${LATEST}

a user posts a discussion topic
    Wait until element is enabled    id=${category_dropdown}
    Select from list by index        id=${category_dropdown}    1
    Wait until element is enabled    xpath=${first_continue_button}
    Click Button                     xpath=${first_continue_button}
    Wait until element is enabled    xpath=${discussion_topic_title}
    Wait until element is enabled    xpath=${summernote_link_button}
    Wait until element is enabled    xpath=${discussion_topic_editor}   10
    Input text                       xpath=${discussion_topic_title}    &{DISCUSSIONTOPIC}[title]
    Execute Javascript               document.querySelector('${discussion_text_editor}').innerText='&{DISCUSSIONTOPIC}[content]'
    Wait until element is visible    xpath=${second_continue_button}
    Click Button                     xpath=${second_continue_button}

A success message appears
    Wait until element is visible    css=${success_text}
    Element should contain           css=${success_text}    Success

the user data is picked up by the property site
    ${value}                         Execute Javascript             var value=document.querySelector('${greeting_plus_firstname_string_element_locator_css}').innerText; return value;
    Should be equal                  ${value}                       ${greeting_plus_firstname_string }

    ${value}                         Execute Javascript             var value=document.querySelector('${you_adverstising_account_element_locator_css}').innerText; return value;
    Should be equal                  ${value}                       ${your_adverstising_account}

the movie iframe is displayed
    Wait until element is visible    css=${iframe_element_locator_css}
    ${test_value}                    Get element attribute      css=${iframe_element_locator_css}@src
    Should be equal                  ${test_value}              &{validuser}[movieiframesrc]



Get password grant-type token
    Create Http Context    stgapi.angloinfo.com    https
    Set Request Header   Content-Type    application/x-www-form-urlencoded
    Set Request Body    grant_type=password&client_id=1&client_secret=coapp&username=ainfo1001%2Bstg101%40gmail.com&password=Anglo123
    Post    /oauth/access_token
    ${RESPONSEBODY}=    Get Response Body
    ${ACCESSTOKEN}=    Get Json Value    ${RESPONSEBODY}    /access_token
    Log to Console    ${ACCESSTOKEN}


A user clicks see more listings
    Wait until element is enabled       css=${see_more_listings_button_discussions_css_selector}
    Click Link                          css=${see_more_listings_button_discussions_css_selector}

the eleventh listing should display

    Wait until element is visible    xpath=${eleventh_listing_discussion_index_xpath_selector}