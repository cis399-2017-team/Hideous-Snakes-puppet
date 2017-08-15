node ip-10-0-7-246 {
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
	
	cron{ "sync fake1":
                command => "rsync -avz /etc/puppet/modules/fakeFreeze/files root@10-0-7-246:/home/fake1",
                user => "root",
                hour => "23",
        }

        cron{ "sync fake2":
                command => "rsync -avz /etc/puppet/modules/fakeFreeze/files root@10-0-7-246:/home/fake2",
                user => "root",
                hour => "23",
        }

        cron{ "sync fake3":
                command => "rsync -avz /etc/puppet/modules/fakeFreeze/files root@10-0-7-246:/home/fake3",
                user => "root",
                hour => "23",
        }
	include sshd	
}
