# This class configures ansible.
#
# A description of what this class does
#
# @summary - Certain files need to be configured in order 
# for the ansible service to be run efficiently. Namely, 
# we would want to configure our own ansible_paths and such.
# 
#   include ansible::config
class ansible::config (
    Hash $settings = {},
    Hash $options  = {},
) {
  file {'/etc/ansible/ansible.cfg':
    ensure => 'file',
    mode   => '0644',
    owner  => 'root',
    group  =>  'root',
    content => template("ansible/ansible.cfg.erb")
  }

  $ansible_settings = lookup(::settings, 'merge')
  $ansible_module_settings = $ansible_settings + $settings

  if $ansible_module_settings['service_name'] and $auto_restart {
    $service_notify = "Service[${ansible_module_settings['service_name']}]"
  } else {
    $service_notify = undef
  }
  $ansible_options = lookup(::options, 'merge')
  $ansible_module_options = $ansible_options + $options
}
