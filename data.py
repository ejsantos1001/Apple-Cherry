#This file contains data variables needed by the framework, 
#dictionaries are prepended with DICT__


from faker import Factory

fake = Factory.create()

baseurl = 'https://stg.angloinfo.com'

cmsbaseurl = 'https://stgcms.angloinfo.com'

robotsurl = baseurl + '/robots.txt'

robotstxt_script = """User-agent: *
Disallow: /
"""



DICT__directorylisting = {
		'name' : fake.name(),
		'content1' : fake.text(),
		'content2' : fake.text()
}

DICT__classifiedslisting = {
       'name' : fake.name(),
	   'content': fake.text()
}


DICT__discussiontopic = {
		'title' : fake.name(),
		'content' : fake	.text()
}	

DICT__validuser = {
	    'username': 'ainfo1001+stg101@gmail.com', 
	    'firstname' : 'afirstname9633',
	    'password': 'Anglo123' , 
	    'default_loc': 'riviera',
	    'displayname': 'staging test account',
	    'movieiframesrc' : 'https://riviera.cumberbatch.me/whatson/moviesiframe'
}

DICT__userforreset = {
	    'username': 'ainfo1001+stg102@gmail.com', 
	    'password': 'Anglo123' ,
	    'default_loc': 'zurich',
	    'displayname': 'ainfotest'
}

DICT__cmsuser = {
		'username': 'dev@angloinfo.com',
		'password': 'penguin'
}

location = DICT__validuser['default_loc']
basepluslocation = baseurl + "/" + location

DICT__resource = {
		'cmssignin': cmsbaseurl , 
		'signin':  baseurl + '/member/signin',
		'reset': baseurl + '/member/reset',
		'dashboard':  basepluslocation + '/member/dashboard',
		'discussions submit'	: basepluslocation + '/content/discussions/submit',
		'discussions index' 	: basepluslocation + '/discussions',
		'how-to index'      	: basepluslocation + '/how-to',
		'property'				: basepluslocation + '/property',
		'movies'				: basepluslocation + '/events/movies',
		'classifieds index'     : basepluslocation + '/classifieds'
 }

DICT__locationdata = {
		'type'             	: "Regional" ,
		'url'              	: "/barcelona" ,
		'name'			   	: "Barcelona",
		'currency'         	: "EUR" ,
		'contact_name'     	: "32767",
		'contact_number'	: "32768",
		'contact_address'  	: "Peter de Montforts",
		'contact_email'   	: "email@domain.com",
		'country_code'    	: "ES",
		'language'        	: "Spanish",
		'tagline'         	: "Life in Barcelona, in English!",
		'region_email'	  	: "barcelona@angloinfo.com",
		'facebook_page'   	: "www.facebook.com"
}


greeting_plus_firstname_string  =   "Hello, " +  DICT__validuser['firstname']
your_adverstising_account = '(' + DICT__validuser['username'] + ')'




#element locator variables

#dashboardpage
display_name_location = '//*[@id="profile-img-container"]/h1/span[1]'

#resetpage
send_reset_link_xpath 					= '//*[@id="reset-form"]/form/button'
reset_link_sent_confirmation_box_xpath  = '//*[@id="reset"]/div/div[1]/p'

#contentsubmission
category_dropdown        = "parentCategory"
discussion_topic_title   = '//*[@id="title"]'
summernote_link_button  = '//*[@id="stateForumTopic"]/form/div[2]/div/div[1]/div[2]/div[3]/button[3]/i'
first_continue_button    = '//*[@id="stateCategorySelect"]/form/div[2]/div/button'
second_continue_button   = '//div[3]/div/button'
discussion_text_editor = '#stateForumTopic > form > div:nth-child(2) > div > div.note-editor.note-frame.panel.panel-default > div.note-editing-area > div.note-editable.panel-body'
summernote__input_element = '//*[@id="stateForumTopic"]/form/div[2]/div/div[1]/div[3]/div[2]/p'
discussion_topic_editor    = '//*[@id="stateForumTopic"]/form/div[2]'
success_text = '#stateSuccess > table > tbody > tr > td:nth-child(2) > span'


#cmsloginpage
login_button = 'button.btn.btn-success'


#cmstopbar
region_dropdown = 'global'
content_dropdown = "//*[@id='ai_menu']/ul[1]/li[1]/a"
configurtion_dropdown_button = "//a[contains(text(),'Configuration')]"
configuration_dropdown_location_managment = "//a[contains(text(),'Location Management')]"


#locations in location management
barcelona_element_css = "#ai-content > div > div > div.col-xs-3.fill-height.right-pane > div > div.panel-body.scrollable.nopad > ul > li:nth-child(15) > a"



#location management configuration fields
eloc_location_management_type 				= '#type'
eloc_location_management_url 				= '#url'         
eloc_location_management_name 				= '#name'       
eloc_location_management_currency     		= '#currency'
eloc_location_management_contactname		= '#contact_name'
eloc_location_management_contactaddress		= '#contact_address'
eloc_location_management_number				= '#contact_number'
eloc_location_management_contactemail		= '#contact_email'
eloc_location_management_countrycode  		= '#country_code'
eloc_location_management_language    		= '#region_language'
eloc_location_management_tagline    		= '#tagline'
eloc_location_management_regionalemail		= '#region_email'
eloc_location_management_facebooklink		= '#facebook_page'


#cmsregionsdashboard
directory_icon = '//p/a/span'


#cmslistingmanagmentgeneric

add_listing_button_css='#detail-listings-tab > div.fill-height > table > thead > tr > th:nth-child(7) > span > button'


#directorylistingmanagmentwindow
directory_first_category_riviera = '//*[@id="children-of-0"]/li[43]/a/span[2]'
directory_second_category_riviera = '//li[43]/ul/li/a/span[3]'
content_dropdown_directory_css = '#ai_menu > ul:nth-child(1) > li.dropdown.open > ul > li:nth-child(1) > a'
add_listing_button = "//th[6]/span/button"
new_listing_name = 'name'
content_box1 = '#listing_html_editor > div.note-editor.panel.panel-default > div.note-editing-area > div.note-editable.panel-body'
content_box2 = '#listing_html_editor_2 > div.note-editor.panel.panel-default > div.note-editing-area > div.note-editable.panel-body'
slug_button = 'div.input-area > div.input-group > span.input-group-btn > button.btn.btn-default'
save_button = 'button.btn.btn-success'

#classifieds listing managment
content_dropdown_classifieds_css = '#ai_menu > ul:nth-child(1) > li.dropdown.open > ul > li:nth-child(2) > a'
classifieds_first_category_riviera='//*[@id="children-of-0"]/li[1]/a/span[2]'
classifieds_second_category_riviera='//*[@id="children-of-1"]/li[1]/a/span[3]'
classifieds_add_listing_button_css='#detail-listings-tab > div.fill-height > table > thead > tr > th:nth-child(6) > span > button'
classifieds_listing_name_id='name'
classifieds_main_content_css='#listing_html_editor > div.note-editor.panel.panel-default > div.note-editing-area > div.note-editable.panel-body'
classifieds_slug_button_css='#listing-detail-form > div:nth-child(2) > div > div.input-group > span.input-group-btn > button'
classifieds_save_button_css='#ai-content > div > div:nth-child(1) > div > div > div > div.panel-body > div > div > div.col-xs-3.fill-height.left-pane > div.panel.panel-default.fill-height > div.panel-body.scrollable > center > button'
classifieds_url_css='#ai-content > div > div:nth-child(1) > div > div > div > div.panel-body > div > div > div.col-xs-3.fill-height.left-pane > div.panel.panel-default.fill-height > div.panel-body.scrollable > div:nth-child(2) > small:nth-child(3) > a'
#classifieds details page in the front end
fe_classifieds_listing_name_css='#item-name'
fe_classifieds_content_css='#tab-description > div > div > p'
#discusions index
see_more_listings_button_discussions_css_selector = '#btn-see-more-discussion'
eleventh_listing_discussion_index_xpath_selector = '//*[@id="recentListings"]/div[11]/div'


#propertypage
greeting_plus_firstname_string_element_locator_css='#bootstrapWrap > div > h1'
you_adverstising_account_element_locator_css='body > section > div.container > div > div > h2 > small'

#movies
iframe_element_locator_css='#movieFrame'

#content sponsor
content_sponsor_widget_locator_id  = 'sponsor-box-widget' 
content_sponsor_widget_locator_css = '#sponsor-box-widget > div > div > div.panel-header.small.text-center'

#ads
ad_728by90_container_locator_id= "google_ads_iframe_/31457341/riviera_728x90_0__container__"
ad_300by250_container_locator_id="google_ads_iframe_/31457341/riviera_160x600_0__container__"
ad_160by600_containter_locator_id="google_ads_iframe_/31457341/riviera_300x250_0"

#robot.txt 
robots_script_display_element_location = 'body > pre'
