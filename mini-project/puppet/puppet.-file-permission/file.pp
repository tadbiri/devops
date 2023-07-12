class file_permission {
  file {'/opt/finance/beta.txt':
    ensure => present,
    content => 'Welcome to xFusionCorp Industries!',
    mode => '0755',
  }
}
node 'stapp01.stratos.xfusioncorp.com' {
  include file_permission
}
