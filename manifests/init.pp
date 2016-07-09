class cisco_examples {
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
  cisco_vtp {'default':
    ensure   => present,
    domain   => 'examplevtp',
    password => 'example',
  }

}
