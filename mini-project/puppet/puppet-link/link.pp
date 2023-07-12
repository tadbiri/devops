class symlink {
  file {'/opt/dba/blog.txt':
    ensure => present,
  }
  file {'/opt/dba':
    ensure => link,
    target => '/var/www/html',
  }
}

node 'stapp03.stratos.xfusioncorp.com' {
  include symlink
}
