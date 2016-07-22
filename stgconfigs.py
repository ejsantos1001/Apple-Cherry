baseurl = 'https://stg.angloinfo.com'

DICT__validuser = {
	    'username': 'ainfo1001+stg101@gmail.com', 
	    'password': 'Anglo123' , 
	    'default_loc': 'zurich',
	    'displayname': 'staging test account'
}

DICT__userforreset = {
	    'username': 'ainfo1001+stg102@gmail.com', 
	    'password': 'Anglo123' ,
	    'default_loc': 'zurich',
	    'displayname': 'ainfotest'
}

location = DICT__validuser['default_loc']
basepluslocation = baseurl + "/" + location 

DICT__resource = {
		'signin':  baseurl + '/member/signin',
		'reset': baseurl + '/member/reset',
		'dashboard':  basepluslocation + '/member/dashboard',
		'discussions submit': basepluslocation + '/content/discussions/submit'
}
