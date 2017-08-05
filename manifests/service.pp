class puppet-ntp::service {
	service { 'ntpd':
	ensure => running,
	subscribe => File['/tmp/new'],
	}
	file{'/tmp/new':
	source=>'puppet:///modules/puppet-ntp/file',
	}
}
