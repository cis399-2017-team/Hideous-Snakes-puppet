## Template for later use!!!##
class users {
	 group { 'classmate':
		 name => 'classmate',
		 ensure => 'present',
  	}

	user { 'fake1':
		ensure  => 'present',
		groups  => ['classmate'],
		shell   => '/bin/bash',
        	purge_ssh_keys => true,
	    	managehome => true,
		home   => '/home/fake1',
		uid    => '1111',
	}
	ssh_authorized_key {'Fake 1':
		type    => 'ssh-rsa',
		user    => 'fake1',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTXfzIWZlGglEQu9vr3gaMYg4We34PHk2S1oejSEEiRvlVALdDXRuHp0s3mqAPgL9ClQhvefntWgwwNQ4jCyfvYxZfw8+gHvS8HjyszbwCNnVfk3y1k4fUyo+HrRmX9jow1Qkf0Ut/YFsx9RT0dOr+bQ5w/2YOjLwb78OyGkh48Sb4ucPhZhMmmr7KlD6wC66XNWG9WvozHwsHXcR8ZLQjEAfb5LQ3Tdt2Gf7ykMBHapF1nyk7yoPJvMuyhgJV3uRSsmxYrwOJyQOhzY8PHl3AplY6DqcvnXbvsxe0uJxHaVBHWVCyk7AIcGHs8TfRTtezP8umajrB2ZAC9SKwQGL/',
	}

	user { 'fake2':
	        ensure  => 'present',
                groups  => ['classmate'],
                shell   => '/bin/bash',
                purge_ssh_keys => true,
                managehome => true,
                home   => '/home/fake2',
                uid    => '1112',
        }
        ssh_authorized_key {'Fake 2':
                type    => 'ssh-rsa',
                user    => 'fake2',
                key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTXfzIWZlGglEQu9vr3gaMYg4We34PHk2S1oejSEEiRvlVALdDXRuHp0s3mqAPgL9ClQhvefntWgwwNQ4jCyfvYxZfw8+gHvS8HjyszbwCNnVfk3y1k4fUyo+HrRmX9jow1Qkf0Ut/YFsx9RT0dOr+bQ5w/2YOjLwb78OyGkh48Sb4ucPhZhMmmr7KlD6wC66XNWG9WvozHwsHXcR8ZLQjEAfb5LQ3Tdt2Gf7ykMBHapF1nyk7yoPJvMuyhgJV3uRSsmxYrwOJyQOhzY8PHl3AplY6DqcvnXbvsxe0uJxHaVBHWVCyk7AIcGHs8TfRTtezP8umajrB2ZAC9SKwQGL/',
        }

        user { 'fake3':
                ensure  => 'present',
                groups  => ['classmate'],
                shell   => '/bin/bash',
                purge_ssh_keys => true,
                managehome => true,
                home   => '/home/fake3',
                uid    => '1113',
        }
        ssh_authorized_key {'Fake 3':
                type    => 'ssh-rsa',
                user    => 'fake3',
                key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTXfzIWZlGglEQu9vr3gaMYg4We34PHk2S1oejSEEiRvlVALdDXRuHp0s3mqAPgL9ClQhvefntWgwwNQ4jCyfvYxZfw8+gHvS8HjyszbwCNnVfk3y1k4fUyo+HrRmX9jow1Qkf0Ut/YFsx9RT0dOr+bQ5w/2YOjLwb78OyGkh48Sb4ucPhZhMmmr7KlD6wC66XNWG9WvozHwsHXcR8ZLQjEAfb5LQ3Tdt2Gf7ykMBHapF1nyk7yoPJvMuyhgJV3uRSsmxYrwOJyQOhzY8PHl3AplY6DqcvnXbvsxe0uJxHaVBHWVCyk7AIcGHs8TfRTtezP8umajrB2ZAC9SKwQGL/',
        }
	
	user { 'stevev':
		ensure  => 'present',
		comment => 'Professor',
		groups  => ['classmate'],
		home    => '/home/stevev',
		managehome => 'true',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}

	ssh_authorized_key {'stevev':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'stevev',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDN0n7TZj/XUCs4ywvPLHfAFTHHkzFbxTW5GuHXMWIyrb7M84ySFSswd2n45Kh2IQey7sd97V0dj/EENKvy+5FCyyTTLWmnTXzTLMeb5qpV6Xful5vt6KjHd41ZAT2pKoK+yAjcTDRdMFq0QYDUEFug8ETv1/wPsJPgCLAlp0kJWJq8Q7AqmdCs+NilLvKKZUu62AMWNdNwDDBHCKgtn8TzgsEIxOgFgrrAXz+UdW5z4DLcmGx7wkdAAM0Q18ohC6L0WayiceGHuC/vHfHNklHOWoBF5L8YWRdGKEN40LMiu//31uuXrmV3ZrudbyhsRcWXr5dukbqD43PpsBzIOo3080FyZJWeLOpbE/6VsrNNlOtroKnuO+mIWOVsBQCH5R3UPwwxTtf8yyO7GvNm2HjRBgGLGXql3RhqIpTEVUfzXqadX+b/v8ChuBjYtegr2CWhs85qGj/2gNanZjfE8NJVa8OymuiQi5boRGsoDKXY1F7hnaZNL4CYyW1yAp44evDyohp/E9+YY3I/RdUfZ/apelHIVNXL4bx25oPUT7/jqqJi3RcyDQugZLH55QWiE1NkFqJqwTif6b6hcsdhIlVuNhzuXKneTm74PCQ13Ui1nY9mx00wjnG6bXiHLy1mKXshl7i8LX9aK7hAzTeSWPnKJpJ2+UeLrywEp3FKsRbt1Q==',
	}
}
