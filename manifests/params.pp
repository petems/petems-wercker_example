# == Class wercker_example::params
#
# This class is meant to be called from wercker_example
# It sets variables according to platform
#
class wercker_example::params {
  case $::osfamily {
    'Debian': {
      
    }
    'RedHat', 'Amazon': {
      
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
