node ip-10-0-7-246 {
	include sshd
	include apache
	include users
	include motd
	include fakefreeze
}

node ip-10-0-7-136 {
	include sshd
	include apache
	include users
	include motd
	include fakefreeze
}

node ip-10-0-7-222 {
	cron { "puppet update":
		command => "cd /etc/puppet && git pull -q origin master",
		user => "root",
		minute => "*/5",
	}
	
	cron{ "sync fake1":
                command => "rsync -avL --progress -e "ssh -i /home/ubuntu/.ssh/id_rsa.pem" /etc/puppet/modules/fakefreeze/files/ root@ip-10-0-7-136.us-west-2.compute.internal:/home/fake1 && rsync -avL --progress -e "ssh -i /home/ubuntu/.ssh/id_rsa.pem" /etc/puppet/modules/fakefreeze/files/ root@ip-10-0-7-246.us-west-2.compute.internal:/home/fake1",
		user => "ubuntu",
		hour => "23",
        }

        cron{ "sync fake2":
                command => "rsync -avL --progress -e "ssh -i /home/ubuntu/.ssh/id_rsa.pem" /etc/puppet/modules/fakefreeze/files/ root@ip-10-0-7-136.us-west-2.compute.internal:/home/fake2 && rsync -avL --progress -e "ssh -i /home/ubuntu/.ssh/id_rsa.pem" /etc/puppet/modules/fakefreeze/files/ root@ip-10-0-7-246.us-west-2.compute.internal:/home/fake2",
		user => "ubuntu",
		hour => "23",
        }

        cron{ "sync fake3":
                command => "rsync -avL --progress -e "ssh -i /home/ubuntu/.ssh/id_rsa.pem" /etc/puppet/modules/fakefreeze/files/ root@ip-10-0-7-136.us-west-2.compute.internal:/home/fake3 && rsync -avL --progress -e "ssh -i /home/ubuntu/.ssh/id_rsa.pem" /etc/puppet/modules/fakefreeze/files/ root@ip-10-0-7-246.us-west-2.compute.internal:/home/fake3",
		user => "ubuntu",
		hour => "23",
        }
	include sshd	
}
