class apache {
	
	package { "apache2": 
		ensure => present
	}

	service { "apache2":
		require => Package["apache2"],
		subscribe => [File['/etc/apache2/sites-available/default'],
		Package['php5', 'php5-mysql', 'php5-dev', 'php5-curl',
		'php5-gd', 'php5-imagick', 'php5-mcrypt', 'php5-memcache',
		'php5-mhash', 'php5-pspell', 'php5-snmp', 'php5-xmlrpc',
		'php5-xsl', 'php-pear', 'libapache2-mod-php5']]
	}

}