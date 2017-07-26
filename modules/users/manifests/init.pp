## Template for later use!!!##
class users {
	 group { 'classmate':
		 name => 'classmate',
		 ensure => 'present',
  	}

	user { 'fakef':
		ensure  => 'present',
		comment => 'Fake Fakenstine',
		groups  => ['classmate'],
		home    => '/home/ubuntu/classFunhouse',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'Fake Fakenstine':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'fakef',
		key     => 'ThisIsAFakeKey',
	}
}
