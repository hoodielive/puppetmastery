# This PAM login file is managed by puppet, so don't be a dofus and edit it here because your changes will be
# 'overwritten'! u dig? 

class pam {
    package { 'pam':




file { 'login':
    path    => '/etc/pam.d/login',
    ensure  => file, 
    content => template('pam/login'),
    owner   => 'root',
    mode    => '0644',
}
