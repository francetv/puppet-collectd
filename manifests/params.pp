class collectd::params (
  $pkgname        = $::operatingsystem ? {
    /(?i:centos|redhat|fedora)/ => "collectd.$::architecture",
    default                     => 'collectd',
  },
  $config_file    = '/etc/collectd/collectd.conf',
  $config_dir     = '/etc/collectd.d',
  $purge          = true,
  $prefix 	= 'host',
  $service_name   = 'collectd',
  $service_ensure = 'running',
  $service_enable = true,
) {
}
