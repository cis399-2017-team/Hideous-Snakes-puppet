node ip-10-0-7-246 {
	cron {"user clean":
		command => "find /tmp -user fakef -delete",
		user => "root",
		hour => "23",
	}
	include sshd
	include apache
	include users
	include motd
	include fakeFreeze
}

node ip-10-0-7-136 {
	include sshd
	include apache
	include users
	include motd
}

node ip-10-0-7-222 {
	cron { "puppet update":
		command => "cd /etc/puppet && git pull -q origin master",
		user => "root",
		minute => "*/5",
	}
	include sshd	
}
