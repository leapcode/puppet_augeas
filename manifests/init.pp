class augeas(
  $version          = 'installed',
  $rubylib_version  = 'installed',
) {
  case $::operatingsystem {
    /RedHat|CentOS|Fedora/:   { include augeas::redhat }
    /Debian|Ubuntu|kFreeBSD/: { include augeas::debian }
    default:                  { include augeas::base }
  }
}
