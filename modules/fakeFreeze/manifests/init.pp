class fakeFreeze {
	package { "rysnc":
		ensure => latest,
	}

	package { "build-essentials":
		ensure => latest,
	}

	cron{
                command => "rsync -avz /etc/puppet/modules/fakeFreeze/files/files root@10-0-7-222:/home/fakef",
		user => "root",
		hour => "23",
	}
}
