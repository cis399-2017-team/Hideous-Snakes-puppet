## Template for later use!!!##
class users {
	user { 'fakef':
		ensure  => 'present',
		comment => 'Fake Fakenstine,,,',
		gid     => '1001',
		groups  => ['sudo', 'video'],
		home    => '/home/fake',
		shell   => '/bin/bash',
		uid     => '1001',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'fake',
		key     => 'insertRealKeyHere',
		
	}
}
