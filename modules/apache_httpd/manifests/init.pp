class { "apache_httpd": 
	package { "apache2": 
		ensure => installed;
	}

	service { "httpd":
		ensure => running,
		enable => true,
	}

	file {
		source => "puppet:///modules/apache_httpd/files/service.conf"
	}	
}
