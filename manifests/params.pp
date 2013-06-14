# Class: augeas::params
#
# Default parameters for the Augeas module
#
class augeas::params {
  $lens_dir = '/usr/share/augeas/lenses'

  case $::osfamily {
    'RedHat': {
      $ruby_pkg = 'ruby-augeas'
      $augeas_pkgs = ['augeas', 'augeas-libs']
    }

    'Debian': {
      if versioncmp($::rubyversion, '1.9.1') >= 0 {
        $ruby_pkg = 'libaugeas-ruby1.9.1'
      } else {
        $ruby_pkg = 'libaugeas-ruby1.8'
      }
      $augeas_pkgs = ['augeas-lenses', 'libaugeas0', 'augeas-tools']
    }

    default:  { fail("Unsupported OS family: ${::osfamily}") }
  }
}
