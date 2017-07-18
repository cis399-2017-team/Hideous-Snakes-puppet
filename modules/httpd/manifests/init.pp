class httpd { 
	package { 'apache2': 
		ensure => latest
	}

	service { "httpd":
		ensure => running,
		enable => true,
		require => [ Package['apache2'], File["/etc/apache2/httpd.conf"] ],
		subscribe => File["/etc/apache2/httpd.conf"],
		hasstatus => true,
		hasrestart => true,
	}

	file { "httpd.conf":
		ensure => present,
		path => "/etc/apache2/sites-enabled",
 		source => "puppet:///modules/apache_httpd/files/service.conf"
		mode => 0640,
		owner => root,
		group => root,
		require => Package['apache2'],
	}	
}
