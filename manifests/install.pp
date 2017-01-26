# == Class: pidgin::install
#
# This class installs pidgin
#
class pidgin::install
(
    $ensure

) inherits pidgin::params
{
    package { $::pidgin::params::package_name:
        ensure   => $ensure,
        provider => $::pidgin::params::package_provider,
    }
}
