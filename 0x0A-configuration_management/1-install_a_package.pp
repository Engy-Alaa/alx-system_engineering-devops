# Install puppet-lint
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  unless  => '/usr/bin/pip3 show flask | grep Version | grep 2.1.0',
}

#package { 'puppet-lint':
#  ensure   => '2.5.0',
#  provider => 'gem',
#}
