class cisco_examples {
  # DNS
  network_dns {'dns configuration':
    ensure  => present,
    search  => ['example.lan'],
    servers => ['8.8.8.8', '8.8.8.4'],
  }

  # NTP
  ntp_config{'ntp config':
    source_interface => 'mgmt0',
  }
  ntp_server{'ntp server':
    ensure => present,
    name   => 'time.example.lan',
  }

  # Configure some VLANs
  cisco_vlan { '2':
    ensure    => 'present',
    shutdown  => false,
    state     => 'active',
    vlan_name => 'example 2',
  }
  cisco_vlan { '3':
    ensure    => 'present',
    shutdown  => false,
    state     => 'active',
    vlan_name => 'example 3',
  }

  # VTP
  cisco_vtp {'example vtp config':
    ensure   => present,
    name     => 'vtp01',
    domain   => 'examplevtp',
    password => 'example',
  }

}
