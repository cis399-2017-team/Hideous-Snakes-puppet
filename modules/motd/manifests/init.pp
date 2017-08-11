class motd {
	file {'motd':
		ensure => file,
		name => '/etc/motd',
		mode => '0664',
		owner => 'root',
		group => 'root',
		content => template('motd/motd.erb')
	}
}
