class fakeFreeze {
	package { "rysnc":
		ensure => latest,
	}
	
	file { "helloWorld.c":
		path => INSERT SOMETHING HERE,
		source => "puppet:///modules/fakeFreeze/helloWorld.c",
		mode => 0777,
		owner => root,
		group => root,
		require => Package['build-essentials'],
	}	
	
	package { "build-essentials":
		ensure => installed,
	}
}
