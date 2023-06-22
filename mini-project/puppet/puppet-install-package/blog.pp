class httpd_installer {
    package {'httpd':
        ensure => installed
    }
}

node 'stapp01.stratos.xfusioncorp.com' {
  include httpd_installer
}
