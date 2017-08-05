class  puppet-ntp::install inherits puppet-ntp {
	package{ $package_name:
	ensure => present,
	allow_virtual => true,
	before => File['/tmp/new'],
	}

}
