$public_key =  'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5kPGhMU17Ge6ogVM8GwZj95rbcfCG2crAGQ/fCccOwauNa+UvnWLyg8Ym1Vf1E6CGkHEfdIw0nXAI+cgbkluARZt/sft1THOr+GTj5uotIMIYdCpOyUFGl4z8965ek6uhndaFaCAusdoe0hNi/INtnNjHe2fGSn4+2GQ4kCYgCWDCk2+ZYSEKNppuiPMFzW6DqXwhGw/UzTscpzrFn3SLoPyLMztPmpKkB64AAp5iY39j0BroUpVmimWPueNV7DT6UcfT+AqmqQ8AMJ2NY2VTDXQ0UmCKb28S67Ha95TS/JTViBUtu+pic+pODsFN5HOiTtRvQPQS5u7BHxGaAYHT'


class ssh_node1 {
  ssh_authorized_key { 'tony@stapp01':
    ensure => present,
    user => 'tony',
    type => 'ssh-rsa',
    key => $public_key,
  }
}

class ssh_node2 {
  ssh_authorized_key { 'steve@stapp02':
    ensure => present,        
    user => 'steve',
    type => 'ssh-rsa',
    key => $public_key,
  }
}

class ssh_node3 {
  ssh_authorized_key { 'banner@stapp03':
    ensure => present,
    user => 'banner',
    type => 'ssh-rsa',
    key => $public_key,
  }
}

node stapp01.stratos.xfusioncorp.com {
  include ssh_node1
}
node stapp02.stratos.xfusioncorp.com {
  include ssh_node2
}
node stapp03.stratos.xfusioncorp.com {
  include ssh_node3
}

