node ip-10-0-7-246 {
}

node ip-10-0-7-136 {
}

node ip-10-0-7-222 {
	cron { "puppet update":
		command => "updateAndLog",
		user => root,
		minute => "*/5",
	}	
}
