class replace_line {
  file_line {'app.txt':
    ensure => present,
    path => '/opt/finance/apps.txt',
    line => "Welcome to xFusionCorp Industries!",
    match => 'Welcome to Nautilus Industries!',
  }
}
node 'stapp02.stratos.xfusioncorp.com' {
  include replace_line
}
