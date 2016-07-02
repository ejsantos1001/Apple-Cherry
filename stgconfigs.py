baseurl = 'https://stg.angloinfo.com'


DICT__validuser = {
	    'username': 'ainfo1001+stg101@gmail.com', 
	    'password': 'Anglo123' , 
	    'default_loc': 'zurich',
	    'displayname': 'ainfotest'
}

DICT__validuser2 = {
	    'username': 'ainfo1001+stg102@gmail.com', 
	    'password': 'Anglo123' ,
	    'default_loc': 'zurich',
	    'displayname': 'ainfotest'
}


DICT__resource = {
		'signin':  baseurl + '/member/signin',
		'dashboard':  baseurl + "/" + DICT__validuser['default_loc'] + '/member/dashboard',
		'reset': baseurl + '/member/reset'
}
