# Basic class to manage augeas
class augeas(
  $version          = 'installed',
  $rubylib_version  = 'installed',
) {
  $lens_dir = '/usr/share/augeas/lenses'

  case $::operatingsystem {
    /RedHat|CentOS|Fedora/:   { include augeas::redhat }
    /Debian|Ubuntu|kFreeBSD/: { include augeas::debian }
    default:                  { include augeas::base }
  }
}
