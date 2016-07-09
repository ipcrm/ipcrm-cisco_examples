class cisco_examples::interfaces {
  Class['cisco_examples'] -> Class['class_examples::interfaces']

  cisco_interface { 'ethernet1/9':
    ensure          => 'present',
    access_vlan     => '2',
    duplex          => 'auto',
    mtu             => '1500',
    negotiate_auto  => true,
    shutdown        => false,
    speed           => 'auto',
    stp_bpdufilter  => true,
    stp_bpduguard   => true,
    switchport_mode => 'access',
    switchport_vtp  => false,
  }

  port_channel{'port channel example':
    ensure       => present,
    id           => 100,
    minimum_link => 1,
    interfaces   => ['ethernet1/1','ethernet1/2'],
  }


}
