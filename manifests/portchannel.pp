class cisco_examples::portchannel {
  # Source https://github.com/cisco/cisco-network-puppet-module/blob/master/examples/cisco/demo_portchannel.pp
  cisco_portchannel_global { 'default':
    bundle_hash   => 'ip',
    bundle_select => 'src-dst',
    concatenation => 'true',
    resilient     => 'false',
    rotate        => '4',
    symmetry      => 'false',
  }

  cisco_interface_portchannel {'port-channel100':
    ensure                    => 'present',
    lacp_graceful_convergence => 'false',
    lacp_max_bundle           => 10,
    lacp_min_links            => 2,
    lacp_suspend_individual   => 'false',
    port_hash_distribution    => 'adaptive',
    port_load_defer           => 'true',
  }
}
