# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include ansible::install
class ansible::install {
  package {'ansible_install':
    name   => 'ansible',
    ensure => 'present'
  }
}
