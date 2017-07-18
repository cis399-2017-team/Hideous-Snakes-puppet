class { "httpd": 
	package { 'apache': 
		ensure => latest;
	}

	service { "httpd":
		ensure => running,
		enable => true,
		require => [ Package['apache'], File["/etc/apache2/httpd.conf"] ],
		subscribe => File["/etc/apache2/httpd.conf"],
		hasstatus => true,
		hasrestart => true,
	}

	file { "httpd.conf":
		ensure => present,
		path => "/etc/apache2/httpd.conf"
		source => "puppet:///modules/apache_httpd/files/service.conf"
		mode => 0640,
		owner => root,
		group => root,
		require => Package['apache'],
	}	
}
