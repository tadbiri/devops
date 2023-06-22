class multi_package_node {
  $pkgs = ['net-tools','unzip']
  package {$pkgs: ensure => installed}
}
node 'stapp02.stratos.xfusioncorp.com' {
  include multi_package_node
}
