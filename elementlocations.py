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

success_text ='#stateSuccess > table > tbody > tr > td:nth-child(2) > span'






#cmsloginpage

login_button = 'button.btn.btn-success'


#cmstopbar

region_dropdown = 'global'

content_dropdown = "//*[@id='ai_menu']/ul[1]/li[1]/a"

configurtion_dropdown_button = "//a[contains(text(),'Configuration')]"

content_dropdown_directory = '#ai_menu > ul:nth-child(1) > li.dropdown.open > ul > li:nth-child(1) > a'

configuration_dropdown_location_managment = "//a[contains(text(),'Location Management')]"



#cmsregionsdashboard

directory_icon = '//p/a/span'

#cmsdirectory

level1_category = '//*[@id="children-of-0"]/li[43]/a/span[2]'
level2_category = '//li[43]/ul/li/a/span[3]'


#directorylistingmanagmentwindow

add_listing_button = "//th[6]/span/button"

new_listing_name = 'name'

content_box1 = '#listing_html_editor > div.note-editor.panel.panel-default > div.note-editing-area > div.note-editable.panel-body'

content_box2 = '#listing_html_editor_2 > div.note-editor.panel.panel-default > div.note-editing-area > div.note-editable.panel-body'

slug_button = 'div.input-area > div.input-group > span.input-group-btn > button.btn.btn-default'

save_button = 'button.btn.btn-success'




