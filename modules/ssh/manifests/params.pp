class ssh::params {
  case $::osfamily {
    Solaris: {
      $ssh_package_name = 'cswopenssh'
      $ssh_service_config = '/etc/opt/csw/ssh/sshd_config'
      $ssh_service_name = 'cswopensshd'
    }
    Debian: {
      $ssh_package_name = 'openssh-server'
      $ssh_service_config = '/etc/ssh/sshd_config'
    }
    RedHat: {
      $ssh_package_name = 'openssh-server'
      $ssh_service_config = '/etc/ssh/sshd_config'
    }
    default: {
      fail("Module propuppet-ssh does not support osfamily: ${::osfamily}")
    }
  }
}
