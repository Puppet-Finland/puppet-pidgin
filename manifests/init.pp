# == Class: pidgin
#
# This class sets up pidgin
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage pidgin using Puppet. Valid values are true (default) 
#   and false.
# [*ensure*]
#   Status of pidgin. Valid values are 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class pidgin
(
    Boolean                  $manage = true,
    Enum['present','absent'] $ensure = 'present'

) inherits pidgin::params
{

if $manage {
    class { '::pidgin::install':
        ensure => $ensure,
    }
}
}
