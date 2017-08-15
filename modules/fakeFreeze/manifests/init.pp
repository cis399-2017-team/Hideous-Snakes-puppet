class fakeFreeze {
	package { "rysnc":
		ensure => latest,
	}

	package { "build-essentials":
		ensure => latest,
	}

	cron{ "sync fake1":
                command => "rsync -avz /etc/puppet/modules/fakeFreeze/files/files root@10-0-7-246:/home/fake1",
		user => "root",
		hour => "23",
	}
	cron {"user clean":
                command => "find /tmp -user fake1 -delete",
                user => "root",
                hour => "23",
        }
}
