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

	cron{ "sync fake2":
                command => "rsync -avz /etc/puppet/modules/fakeFreeze/files/files root@10-0-7-246:/home/fake2",
                user => "root",
                hour => "23",
        }

        cron{ "sync fake3":
                command => "rsync -avz /etc/puppet/modules/fakeFreeze/files/files root@10-0-7-246:/home/fake3",
                user => "root",
                hour => "23",
        }

	cron {"clean fake1":
                command => "find /tmp -user fake1 -delete && find /var/tmp -user fake1 -delete",
                user => "root",
                hour => "23",
        }
	cron {"clean fake2":
                command => "find /tmp -user fake2 -delete && find /var/tmp -user fake2 -delete",
                user => "root",
                hour => "23",
        }
	cron {"clean fake3":
                command => "find /tmp -user fake3 -delete && find /var/tmp -user fake3 -delete",
                user => "root",
                hour => "23",
        }
}
