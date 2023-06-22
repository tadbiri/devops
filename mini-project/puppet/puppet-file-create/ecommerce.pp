class file_copy {
        file { '/opt/devops/ecommerce.txt':
                ensure => 'present',
        }
}

node 'stapp03.stratos.xfusioncorp.com' {
        include file_copy
}


