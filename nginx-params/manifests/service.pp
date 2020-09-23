# Manage nginx daemon state.
#
# A description of what this class does
#
# Manage the nginx service.
#   include nginx::service
class nginx::service (
  $service_name = $nginx::params::service_name
) inherits nginx::params {
  service {'nginx_service':
    name       => $service_name,
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
  }
}
