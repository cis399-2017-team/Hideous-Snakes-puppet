class fakeFreeze {
	package { "rysnc":
		ensure => latest,
	}

	package { "build-essentials":
		ensure => latest,
	}

	file { "helloWorld.c":
		path => PUT SOMETHING HERE,
		source => "puppet:///modules/fakeFreeze/helloWorld.c",
		mode => 0777,
		owner => root,
		group => root,
		require => Package['build-essentials'],
	}	
	
	file { "helloWorld.cpp":
		path => PUT SOMETHING HERE,
		source => "puppet:///modules/fakeFreeze/helloWorld.cpp",
		mode => 0777,
		owner => root,
		group => root,
		require => Package['build-essentials'],
	}	

	file { "helloWorld.java":
		path => PUT SOMETHING HERE,
		source => "puppet:///modules/fakeFreeze/helloWorld.java",
		mode => 0777,
		owner => root,
		group => root,
		require => Package['build-essentials'],
	}	

}
