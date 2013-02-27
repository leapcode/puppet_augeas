class augeas::base {
  $lens_dir = '/usr/share/augeas/lenses'

  # ensure no file not managed by puppet ends up in there.
  file { $lens_dir:
    ensure       => directory,
    purge        => true,
    force        => true,
    recurse      => true,
    recurselimit => 1,
    mode         => '0644',
    owner        => 'root',
    group        => 'root',
  }

  file { "${lens_dir}/dist":
    ensure => directory,
    purge  => false,
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }

  file { "${lens_dir}/tests":
    ensure  => directory,
    purge   => true,
    force   => true,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
  }
}
