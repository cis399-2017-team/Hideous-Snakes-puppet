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
		user    => 'fake',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCUAISsul1Ad4yd8EM3OBSvPh+8vvjkJ0awW8FWX0BfMgKBb/XQ6pyzCA2i5fqw5wC//0F0JCFhh7pin67077Jyq8PdL1c3WbUrJcRMoATtxQi51BfkxnaME0wngKxaiBdzL0Ge2hlmxQhQbiSBQMJvLU2/MjGgi+pGnja2GLzUprqICgBz2cIIDlIryESMr3p9JpfqgjHG6hZZG5hPOrPXenxnmBqSje1ld/9mvc5KCwclbFjtqkKpSFGiCjDgAoAjvuWXtx3sJw0VbborB5QZmyl261E4KDHBDoQpfznP9rx7R49YlM8BHrCAaDyJ3mlV1b50odh1AwxLZgUcTlAB',
	}
}
