class service_mgm {
  package {'vsftpd':
    ensure => installed,
  }
  service {'vsftpd':
    ensure => running,
    enable => true,
  }
}
node 'stapp02.stratos.xfusioncorp.com' {
  include service_mgm
}
