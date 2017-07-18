class apache {
	package { "apache2": 
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

