# == Class: wercker_example
#
# Full description of class wercker_example here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class wercker_example (
) inherits wercker_example::params {

  notice('Hello world')

  class { 'wercker_example::install': } ->
  class { 'wercker_example::config': } ~>
  class { 'wercker_example::service': } ->
  Class['wercker_example']
}
