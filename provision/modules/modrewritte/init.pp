class modrewrite{
	exec { 'enabledmodrewrite':
		command => '/usr/sbin/a2enmod rewrite',
		require => Package['apache2']
	}
}