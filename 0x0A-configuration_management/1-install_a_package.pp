# install flask -v 2.1.0

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install flask==2.1.0',
  path        => ['/usr/bin'],
  creates     => '/usr/local/lib/python3.X/dist-packages/flask', # Adjust the path according to your Python version
  require     => Package['python3-pip'],
  logoutput   => true,
}