from faker import Factory

fake = Factory.create()

baseurl = 'https://stg.angloinfo.com'
cmsbaseurl = 'https://stgcms.angloinfo.com'



DICT__directorylisting = {
		'name' : fake.name(),
		'content1' : fake.text(),
		'content2' : fake.text()
}


DICT__validuser = {
	    'username': 'ainfo1001+stg101@gmail.com', 
	    'password': 'Anglo123' , 
	    'default_loc': 'riviera',
	    'displayname': 'staging test account'
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
		'discussions submit': basepluslocation + '/content/discussions/submit'
}


DICT__region = {
		
}