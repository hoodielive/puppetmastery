file{'/etc/nginx/nginx.conf':
  ensure   => file, 
  source   => 'puppet:///modules/ill_b/nginx.conf',
  required => Package['nginx'],
}
file{'nginx':
  ensure  => running, 
  enable  => true, 
  require => File['/etc/nginx/nginx.conf'],
}
package{'nginx':
  ensure => present,
}
