node ip-10-0-7-246 {
}

node ip-10-0-7-136 {
}

node ip-10-0-7-222 {
	cron { "puppet update":
		command => "cd /etc/puppet && git pull -q origin master",
		user => "root",
		minute => "*/5",
	}	
}
