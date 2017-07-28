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
		home    => '/home/fakef',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'Fake Fakenstine':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'fakef',
		key     => 'ThisIsAFakeKey',
	}
	file { '/home/fakef':
		ensure => 'directory',
		owner  => 'fakef',

	}
	
	user { 'nsato10':
		ensure  => 'present',
		comment => 'alphabet',
		groups  => ['classmate'],
		home    => '/home/nsato10',
		managehome => 'true',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'nsato10':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'nsato10',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCH7Lspv4byYSdvKzSkh29q6lKco/f7WuiRVg06MeRiRqFDSknppvHoiAap1T3yVs8CH1wiWux9N1B2lEEqUMxFwxdR6vlgKkr8ACOLKVBBX3QPZSv5/jdaPENBqhIOQzQSv35vjNM6atPQ810fpKwoVtemFz4jfXP64GT91HK0oPbEMcTZOHJ2PBSx2l77K6/md/tF0JqK0voL6nz63X3npFuR3qdJ0kxLQghkdzAEryEsuTSn/KxBa2X/fyjfiGQY2h9sEG6fQLFdpTsj3zBmCxyksSUnxR3b+fkfjknJiHiuncu0CzchSbZXodah9zC/UGHo4L0LVAcMeBmvEQYF',
	}
	file { '/home/nsato10':
		ensure => 'directory',
		owner  => 'nsato10',
	}
	
	user { 'mister_person':
		ensure  => 'present',
		comment => 'alphabet',
		groups  => ['classmate'],
		home    => '/home/mister_person',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'mister_person':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'mister_person',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQC2H7AV3pr9nCZfYDHp5Ji1RLQozWYCC9PfodqvEBLY4S+RHsVWMuyenSEdf0mMuYT6QISk2hG5aTZD1psMPK8glFIt0UQ1m8ZPWaUzUogM95WWazwnzfiLcPLAPYRnMBMLO0yFFPlVFSWEOLQ7jMoM/eXOpPzZdZ8iDKa/Fe3tJqnJaNDncxzqvvRjyMWt5+OUidah+DkKWwzymQ+XH/ypIXY5+6bzcBfkb4Z1/ijRbcu7pGu01fWLRWCvy/bJDqBFgSEIGTSngVd/B0oXOGqvdwScgldVoIKExwzSQ7JDITmOTkej/VpwUC3lKM21a+HG85AB5YoPqFr/6ih1FORfQbmjoWdT4VAJoFH6WfngoqcOfci3qa+BNDecRiOuQbNu65ptPfOhJh7aiuDdL+tmY+C00gtbVDhLTYTM5jepembpFcv/7f2O9VtWJpPXZ4u1WkaffmqH3ZqV+/ET7wxDZeGgr6RvoG88UxdWUvr/wHgJvngEz4Y1DHitwCzCXIko0kH73eaIt8kaJUEdOl6FceoBZBK9i2mNktnd5sWtsxAXO/1GOR7a0Mw+XCUI9r8sN6B5fX9wbnBNj2kClEJLInvIVxeQqIw2NH2FzYgxKySCH4h04yoZR0fUSgPHxEdUQPM6X/lZDYX1bVd+NNsu9YQuRH4JLEclE5vTLIXLxw',
	}
	file { '/home/mister_person':
		ensure => 'directory',
		owner  => 'mister_person',
	}
	
	user { 'cplachno':
		ensure  => 'present',
		comment => 'Binary Boiz',
		groups  => ['classmate'],
		home    => '/home/cplachno',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'cplachno':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'cplachno',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCyS6Huzp2PgAPg5RGCLmQrKFQj/MiXOqLHle+Cs/3bEpm7w+Za2OU5hfV10J72U+HQ+9Z7GwYjO1+0iGgfeCTOQqS+JC74ojnmCmw4iMVMII6Bm71eFWYFG/8IB6F9VTUWFx3WW0rPzsdh0qSLaLlLqzHTaOgeEEVWQ2C7IFFKitlqKnfA8m4jg9g+820BBuUwZe9fFY0Nl+vb1sY0FqmxMH1atMNHpTnnS9/jR9fnhuixa/VaSTF7lo+igcUIUl+B5pD+juiim7k9PPJ55p4b9ukujdSNeGruovJUFMIHgp2sRS9OmihlbHOhO1YMlry8/2ex6Fn5Gm6el5Z/KyoH',
	}
	file { '/home/cplachno':
		ensure => 'directory',
		owner  => 'cplachno',
	}
	
	user { 'Vino':
		ensure  => 'present',
		comment => 'Fork Bomb',
		groups  => ['classmate'],
		home    => '/home/Vino',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'Vino':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'Vino',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5muwuCYjAXyNqJey4F0hheb2KADcYtfLngn2qixILOdeKWNJB8+yGjYKHKc1/39qW55AtucV+77HEWzoYl1/V/0wswmE1RsnOyEce3gcH2naFNcnzKjqnCe0zcZCUBZIr3MsPvR1Y/BwNGCK+Vo7WYyqyOPNAmFj1dNiOEedTKJqzcFIO0awTY5MJC+G9q32YUbHv60vIeWtix1GnaIv9mbjIofYeBXlBr3mxH5dyZxunC+XyYlgCHToJpWlwef9KPQ9mPRsb3Hc98tx9pSpmI6+XHamaoXVuDAQUxEgkwTSth9w7q/S5Kv1rEL/3B8I7a1laT/dd3PPCNtM8s5y/',
	}
	file { '/home/Vino':
		ensure => 'directory',
		owner  => 'Vino',
	}

	user { 'cnf':
		ensure  => 'present',
		comment => 'Fork Bomb',
		groups  => ['classmate'],
		home    => '/home/cnf',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'cnf':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'cnf',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCROsSl7lF63moq10Z/JQ4MCEfFwxu/lH2LLTYHl6wolKRSEaJcFNx/Wszf76xTnyjIj9knbFu8OTQtu+zDYm9wwn2yXlULMLOoW76roQivq/zUknhtJYsbnDzCwYHiwdq9eGagn2vqtsZpoZG1vZrvt9SMiNHiyDkeM0yKNM+mi/qd+OWObqsNo0AW/W/5I7IIburbTB6riMBRgmqa5r0jXaQj7bGBImar3ohZRLWCpfH8pFnQpwVSAAAUfJEOCW5Y6dwWXqOh7lfVB1+T9CQsFyLIHyoo/vf+6Nu1D80CPI1IsjKMMuZEraqZrjhc6W9o/Y3+2GtLe0iePN2PA+wR',
	}
	file { '/home/cnf':
		ensure => 'directory',
		owner  => 'cnf',
	}
	
	user { 'pogrebinsky':
		ensure  => 'present',
		comment => 'Fork Bomb',
		groups  => ['classmate'],
		home    => '/home/pogrebinsky',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'pogrebinsky':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'pogrebinsky',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+GfVig6yYm5Zc+5oQR5oCSpn6T2UgY/rEFmCbVPFILHlpmP3Ljm8J7IvDJyfJOZSbYWgt5LZGulpmZYayYFBo02vJC9daA8ax4LgqHmqrOQKl6J+NRwzUbEsQwrYznGwecOrX5d2IG5eV4lon1GAn2rOmZLQGgu6b1F39aYHZ6wRrN1ZAyXbXeX4Jb65Vfd8hbWNQ4/buJlVlJEW2aA0djUEdVNUQuFjZljH9bHk3yM9/Ak4sP9ezB5fNTciKuswvjXLfvl0W0Fds3wAwa+FFMDGfCdZNoigs42Yo533ld1X0fWjC9BvYRNw4k27bAZlX/9x1VcJwGMEQDtueE+aX',
	}
	file { '/home/pogrebinsky':
		ensure => 'directory',
		owner  => 'pogrebinsky',
	}
	
	user { 'jdolan':
		ensure  => 'present',
		comment => 'Hot Shame',
		groups  => ['classmate'],
		home    => '/home/jdolan',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'jdolan':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'jdolan',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzQ9y1oCy32mSQNuxr6ti9aE02mf1TV4DnWAMkHrBhrgzwF6ycLrqkTqUA0gOaWX9AlvgotVNMVgpHicM0QM5BCD1eLai1MKBewhqTzw9hnpaf9OugdWCSQtC7Jc9M0sYFCp6kdLCRHyvUvnb74jQXFA4EiXO1bLfnIbTCcHNvQDdymyEnfHD/Q5JeNm+DqaN4ZqcMqzlnWM27+/m312nn1KEIWpRANWJBJSBIFvXWS4YmrbFZN7WkRYy1GJisGRhk4PaHFQOZJJ26Im8URBhKhPlQwJljIU8kuboQ/2ASrboBPSYOV3Cmoh1PETjeu2OXag1shUlUaSatqBb/t+uF',
	}
	file { '/home/jdolan':
		ensure => 'directory',
		owner  => 'jdolan',
	}
	
	user { 'jsheabia':
		ensure  => 'present',
		comment => 'The Fighting Mongooses',
		groups  => ['classmate'],
		home    => '/home/jsheabia',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'jsheabia':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'jsheabia',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwP0EXIM1EtCI+OyhgAZ8greAxbdz633f6m/OEsymAtJefkEjw1A5vrMmkyfeoSAELuRbYHxX3N2gPU606IewVZt9KDkL34HMwQDJU6P4fGX5u0WrhmVhqsY2e4UejPtjOtAXGvOjRzkFHuYMLSAL6BbTTTo96Najh9inMxYjb2rP+9E/IRCj9trkEKspHKOTGlj+ADYXtFNb/4KfXuC+oexl2JAGIfSzM9sFBPA3z4d+kxa9AWf1iKWhEB2m5lefD/p8jcjRpXNBm281rIj4vkeWOKFh71gVZ9vR0p+VtYLs3f5tCU2G7zA6pjW8RricBeqG7egWS7DuSLw8datTH',
	}
	file { '/home/jsheabia':
		ensure => 'directory',
		owner  => 'jsheabia',
	}
	
	user { 'dholstege':
		ensure  => 'present',
		comment => 'The Fighting Mongooses',
		groups  => ['classmate'],
		home    => '/home/dholstege',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'dholstege':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'dholstege',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCTPThmNila82dRmG8nJMBXVReNJT0lrk1saFKmmZ+UjR6t2TvQBErUmZUiA1/dwiIWKRLUF4miagKQMeZECvdPNarL748hlJvKAFibGEDFgTMD3gLnmV5O0dVOaR1yCK2et6RgPr0HaK1YoudllIO3dfcyD14YF7KgkQLUS29GqxzYa8UWfpZXdTAK3i4pGX2zE6FeLohEZT4HscOqa/QQsyrjvuIaWcQCp4YMiFhjMsMIYMsxk2Ge1cbDm+aRQcAIFSUdjeO3R4oMx4GS+WhewpCGVleBn8zSHuh4qBUcQDuMQ4TTJ7mrvNm2tGcHjtuZyKQbhBL1YW1EuS6VsEfZ',
	}
	file { '/home/dholstege':
		ensure => 'directory',
		owner  => 'dholstege',
	}
	
	user { 'jemin':
		ensure  => 'present',
		comment => 'The Fighting Mongooses',
		groups  => ['classmate'],
		home    => '/home/jemin',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'jemin':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'jemin',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCgq+a6lGdgvfNl37gNfJFzth1aijWIo8goRvH/P2ElQxY1aKmIbYyJKGFkgyEo8cWM+kr4s8OOufputsv6FV4Di9GPECBeBoPN2va4nWakep6Fryanj5QAla7wV0AcVMgiSXYF03+HOLfLBECv3xl3sYleSC3bkkcwgXko8xxal/+qGD63DWWKc4A2WlOf0a8tb6paTPYEUOBBvT4lD5u0yU7wB5+0/HQTGZIqLNX6AeVPMl74zFIhNQbUyjNWMuo3JolOn7JffTzdGBV2nmszxjyAjRG6M2/xVlocpBVjDclhHBGqHqNQd2ZFwWKsY5eZxuk1im4047CUkcFX4vw7',
	}
	file { '/home/jemin':
		ensure => 'directory',
		owner  => 'jemin',
	}
	
	user { 'Steven':
		ensure  => 'present',
		comment => 'Ninjas',
		groups  => ['classmate'],
		home    => '/home/Steven',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'Steven':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'Steven',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCVa0UoplSUtrseodyA3DLt18HFk9nKfDCAdNfi8BPcxDUfyyhwZrZVOKTQqqY+AWdST1eM1v9VwyCNuzpgjER7Qee7u28d4+fDWzO+XVf+OgpCNxOYuDgm1PWC5pmYcmMVoyfQZkNCZEIdlsG0RR5OQ1sBhugw/OED3u2Sih1gYBxyZBBdHf3liCaVR0aLFi9xB2pgcjnVNootReJXlYleBCl1cS0vBqwEz5HbEgd32vpVjMGoti7D+W3ohXEuJt9Csq6VSwzFj1o4VbncZL4/CJ02JDbOLqKuc7OsyrYDABFXgbJMOtUouX61NdE9QaDM9ZjEsX6XaYVjFZ3U/h1V',
	}
	file { '/home/Steven':
		ensure => 'directory',
		owner  => 'Steven',
	}

	user { 'Meni':
		ensure  => 'present',
		comment => 'Ninjas',
		groups  => ['classmate'],
		home    => '/home/Meni',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'Meni':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'Meni',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKc1y97UibIQujJ9Y25fFYvrpTSck73Cwfh+g7V3YaSvHUvK8Td5tSVH7ue4IFYVEFjy9njJ0h95P6c//Lm5mv0pZl0InOqH0VMN3y1ge6QGz9csTMvrHFsjR9sdQ/eIqTQcohcM/RKVjN3W1oIknogDGK52M2e3SzT+TZNxuaxe/lgg4E6UGD81ZxgKJaZtUEnufhMszRaDCUhq0qaZrhev7PJV1lej1ndfRnGnxgY2F66lISp0TUfxtOtCe7ZUoMtLwmoyB3bwGTpjgOYjTM2DnG1igHQ+nme4VquKMYFbSR7pL6JYtfo8Q1NANMilayDQqcPmZuvXHqO52BL0yh',
	}
	file { '/home/Meni':
		ensure => 'directory',
		owner  => 'Meni',
	}
	
	user { 'stevev':
		ensure  => 'present',
		comment => 'Professor',
		groups  => ['classmate'],
		home    => '/home/stevev',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	file { '/home/stevev':
		ensure => 'directory',
		owner  => 'stevev',
	}
	ssh_authorized_key {'stevev':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'stevev',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDN0n7TZj/XUCs4ywvPLHfAFTHHkzFbxTW5GuHXMWIyrb7M84ySFSswd2n45Kh2IQey7sd97V0dj/EENKvy+5FCyyTTLWmnTXzTLMeb5qpV6Xful5vt6KjHd41ZAT2pKoK+yAjcTDRdMFq0QYDUEFug8ETv1/wPsJPgCLAlp0kJWJq8Q7AqmdCs+NilLvKKZUu62AMWNdNwDDBHCKgtn8TzgsEIxOgFgrrAXz+UdW5z4DLcmGx7wkdAAM0Q18ohC6L0WayiceGHuC/vHfHNklHOWoBF5L8YWRdGKEN40LMiu//31uuXrmV3ZrudbyhsRcWXr5dukbqD43PpsBzIOo3080FyZJWeLOpbE/6VsrNNlOtroKnuO+mIWOVsBQCH5R3UPwwxTtf8yyO7GvNm2HjRBgGLGXql3RhqIpTEVUfzXqadX+b/v8ChuBjYtegr2CWhs85qGj/2gNanZjfE8NJVa8OymuiQi5boRGsoDKXY1F7hnaZNL4CYyW1yAp44evDyohp/E9+YY3I/RdUfZ/apelHIVNXL4bx25oPUT7/jqqJi3RcyDQugZLH55QWiE1NkFqJqwTif6b6hcsdhIlVuNhzuXKneTm74PCQ13Ui1nY9mx00wjnG6bXiHLy1mKXshl7i8LX9aK7hAzTeSWPnKJpJ2+UeLrywEp3FKsRbt1Q==',
	}
	
	user { 'mhebeler':
		ensure  => 'present',
		comment => 'Alphabet',
		groups  => ['classmate'],
		home    => '/home/mhebeler',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'mhebeler':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'mhebeler',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDDH3nBikuyiSC0+UitI7n/wFinh1M8bOAiDFUUUM3o6T3wcOXkH7yRU9WWePrRH2BUjsd0KKW3O39m5Gdq0TouncEyk2gfWY8J9mkYDpdJ8FxWYEvIQhhjFHWCpk/5EH9Cqic3NMwRyt5CeddnzdutFnTg2dmsEuKqAc1pMGm6LVPMWtazuIuRexGWAV/tL6nSqhs9+nYNQsoyQuK25gBOLQEF8+tnACPClmUzBfjSAFREbhe0WveTeUUXKA6SXXTJambB6cvYTWDQ6hEaxzs94hDUehJB/V8o0S45gB/t/9IfKXmjt5dMLM4TKB8GZRicnsAufGrrtuW/moCvzkp9',
	}
	file { '/home/mhebeler':
		ensure => 'directory',
		owner  => 'mhebeler',
	}
	user { 'aziz94shh':
		ensure  => 'present',
		comment => 'Binary Boiz',
		groups  => ['classmate'],
		home    => '/home/aziz94shh',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'aziz94shh':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'aziz94shh',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8lqY5aml/XobpKeMnjHVlmTlz2d3QxP6AVSrPCvOjzWz9T0UN/llnedRoU9CpX6hgash5danUijlkhtX6Aiaqj/vWG6JOxddZOr/+ln20B6GxKFi8yy59lSGwhqfLATSxKu4//DeAj+GIExw2x6LDY0qt1a0047B4elIhBE+cHN2QvayOxwb0lP4ub5yaNChC/LO2xFU2rgvnEfANqWeeqPtHuQVaSsDdwpkiYIk4rhmX4q2XVv+ZLgJyEYSNm7QRx/cotcmq37iWkKTmq/tlpYDiSLSitUqBdMwz73yQ8uhDR0uIfVrdkilIdF7edEsHIUoqtEU0QpzQHi1nh3NH',
	}
	file { '/home/aziz94shh':
		ensure => 'directory',
		owner  => 'aziz94shh',
	}
	user { 'levishutts':
		ensure  => 'present',
		comment => 'Binary Boiz',
		groups  => ['classmate'],
		home    => '/home/levishutts',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'levishutts':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'levishutts',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCQ3/5pTJx1/rMPLpSEQeXII66gdY8+xcXkAuBdlOwLHx7DzsyFNWTqSwN8Px1eNZwpQw2MQgLK2B+qrrDh8IOHa5fgL6eXvT8qnkxTILvPLGu1XBR76YidTC6a71R9xkdf0teIK99FxVu0GX13Hmh1rLPoK0egCsrcGjqbu9boTDhpajFwD44ekuc+lRv01lfJ6iDUA0Gl1xn4k7HmgFQ67Oh28G4hWVT9TpeakGX0eJ2nXMTbBOfHj8d0OFIaoKjQfhTMiRftvVoQUFnyUjj7xHyKmwJep31onZClxZJQYTpmL0QiPTpSI/J3mQ7NUrXAYXszrchMMge51mENhEQx',
	}
	file { '/home/levishutts':
		ensure => 'directory',
		owner  => 'levishutts',
	}
	user { 'houllette':
		ensure  => 'present',
		comment => 'Hot Shame',
		groups  => ['classmate'],
		home    => '/home/houllette',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'houllette':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'houllette',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCVs/6140OKWU4CBCR8H/eDSxeAOhlyQzuv6X4xv4PxW0425s5Rz/pXKPv5OfZdA0WTBEBCHkrxC2Kn2n7IId25kqhckI5T6W0F3LLcmFXkE5kxzbGICgeXRHAewozv8TrK3pbMIJCbnTEnkqXkf72FFuog36GbbHuKE60qCYrF5h4oQ6gfXvBfhjxusfb4hdi3H84dQrG4IK9yyr5o2U1b5cV4kP/jt9wjiZapWSxcvbvsgftRdTrRx5Bru0Jfn+bKcPH9UKFplDQTC0HbCzPQ5242J9vt/wBubPPdevw1SukvdOAIE8tXSZhmJodNkmBLOZy+NXjK7cXxFcdGeCwd',
	}
	file { '/home/houllette':
		ensure => 'directory',
		owner  => 'houllette',
	}
	
	user { 'slynch':
		ensure  => 'present',
		comment => 'Segmentation Squad',
		groups  => ['classmate'],
		home    => '/home/slynch',
		shell   => '/bin/bash',
		expiry => '2017-08-15',
		purge_ssh_keys => true,
	}
	ssh_authorized_key {'slynch':
		ensure  => 'present',
		type    => 'ssh-rsa',
		user    => 'slynch',
		key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCsfkdPqW0Vm6T5PcQYaBid7eXpd3wK54x9Qq50tDYenN1CfyTIM6mEJYYxtIpKwV5oqMiJLJ4PyfpuWCpl1DjIvFhnFtpv8p50yc3ZNNQvNbGhpSMp2G6RmTnmsSmTLk3FEThd4OIfhWCCawd3WaJbSQqyjg5ymr/VYj+rYauC0nT19VHrgqw2lr/HVItXTt0N6JTu01WLTvs75n988OLLkSeJL7pycFfo8ve+pK8phANsUNos42dug+8zQwHo4tqsWNh+o1tMCrOcoQjgOSIXyS9EuAkg8sE37cAoYZ3RT3zZoz+c1qtRg6Bjp/u7Hac+ac28cYzQt2/ja0oQRdil',
	}
	file { '/home/slynch':
		ensure => 'directory',
		owner  => 'slynch',
	}

}
