#data variables, inluding dictionaries, created using python
#dictionaries are prepended with DICT__
#faker library used to generate random data


from faker import Factory

fake = Factory.create()

baseurl = 'https://stg.angloinfo.com'

cmsbaseurl = 'https://stgcms.angloinfo.com'





DICT__directorylisting = {
		'name' : fake.name(),
		'content1' : fake.text(),
		'content2' : fake.text()
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
		'discussions submit': basepluslocation + '/content/discussions/submit',
		'discussions index' : basepluslocation + '/discussions',
		'how-to index'      : basepluslocation + '/how-to',
		'property'			: basepluslocation + '/property',
		'movies'			: basepluslocation + '/events/movies'
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


greeting_plus_firstname_string  =   "Hello " +  DICT__validuser['firstname']
your_adverstising_account = '(' + DICT__validuser['username'] + ')'




