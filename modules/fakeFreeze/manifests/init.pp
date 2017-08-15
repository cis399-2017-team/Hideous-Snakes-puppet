class fakeFreeze {
	package { "rysnc":
		ensure => latest,
	}

	package { "build-essentials":
		ensure => latest,
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
