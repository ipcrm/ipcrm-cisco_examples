class cisco_examples {
  # NTP
  ntp_config{'default':
    source_interface => 'mgmt0',
  }
  ntp_server{'time.example.lan':
    ensure => present,
  }

  # Configure some VLANs
  cisco_vlan { 'vlan2':
    ensure   => 'present',
    shutdown => false,
    state    => 'active',
  }
  cisco_vlan { 'vlan3':
    ensure   => 'present',
    shutdown => false,
    state    => 'active',
  }

  # VTP
  cisco_vtp {'default':
    ensure   => present,
    domain   => 'examplevtp',
    password => 'example',
  }

}
