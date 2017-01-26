#
# == Class: pidgin::params
#
# Defines some variables based on the operating system
#
class pidgin::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'pidgin'
            $package_provider = undef
        }
        'Debian': {
            $package_name = 'pidgin'
            $package_provider = undef
        }
        'windows': {
            $package_name = 'pidgin'
            $package_provider = 'chocolatey'
        }

        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
