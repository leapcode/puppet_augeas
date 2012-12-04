class augeas::debian inherits augeas::base {

  package {
    ['augeas-lenses', 'libaugeas0', 'augeas-tools']:
      ensure => "${augeas::base::version}",
      before => File['/usr/share/augeas/lenses'],
  }

  package {'libaugeas-ruby1.9.1': ensure => "${augeas::base::rubylib_version}" }

}
