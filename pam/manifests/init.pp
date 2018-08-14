# This PAM login file is managed by puppet, so don't be a dofus and edit it here because your changes will be
# 'overwritten'! u dig? 


file { 'login':
    path    => '/etc/pam.d/login',
    ensure  => file, 
    content => template('pam/login.centos.erb'),
    owner   => 'root',
    mode    => '0644',
}
