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
	cron { "restore state":
		command => "rsync -avz --delete /etc/puppet/modules/fakeFreeze/files/files root@ec2-34-208-231-112.us-west-2.compute.amazonaws.com:/home/fakef",
		user => "root",
		hour => "23",
	}
	include sshd	
}
