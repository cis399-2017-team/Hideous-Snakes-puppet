class motd {
	file {'/etc/motd':
		ensure => file,
		mode => '0644',
		owner => 'root',
		group => 'root',
		content => template('motd/motd.erb')
	}
}
