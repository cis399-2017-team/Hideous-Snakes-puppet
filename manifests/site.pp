node ip-10-0-7-246 {
	include sshd
}
#this is a dumb comment
node ip-10-0-7-136 {
	include sshd
}

node ip-10-0-7-222 {
	cron { "puppet update":
		command => "cd /etc/puppet && git pull -q origin master",
		user => "root",
		minute => "*/5",
	}
	include sshd	
}
