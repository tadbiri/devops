class add_user {
  user {'ravi':
    name => "ravi",
    ensure => present,
    uid => "1148",
  }
}

node 'stapp01.stratos.xfusioncorp.com' {
  include add_user
}
