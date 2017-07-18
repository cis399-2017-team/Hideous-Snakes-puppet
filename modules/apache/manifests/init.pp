class apache {
	exec { "apt-update":
		command => '/usr/bin/apt-get update'
	}
	
	package { "apache2": 
		require => Exec['apt-update'],
		ensure => installed,
	}

	service { "apache2":
		ensure => running,
		enable => true,
		require => [ Package['apache2'], File["/etc/apache2/apache2.conf"] ],
		subscribe => File["/etc/apache2/httpd.conf"],
		hasstatus => true,
		hasrestart => true,
	}

	file { "htppd.conf":
		ensure => present,
		path => "/etc/apache2/htppd.conf",
 		source => "puppet:///modules/apache/files/htppd.conf",
		mode => 0640,
		owner => root,
		group => root,
		require => Package['apache2'],
	}	
}

apache::vhost { '10.0.7.246:80':
	port => '80',
	ServerName => "boa.com",
	docroot => '/var/www/first',
}
