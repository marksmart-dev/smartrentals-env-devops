locals {
  envs = {
    prod-australia-southeast1-0 = {
      secret_name    = "cs-vpn-psk-prod-australia-southeast1-tunnel-0"
      secret_project = "cs-hc-1e3139d9a4264deca6431a05"
      secret_version = "1"
    }
    prod-australia-southeast1-1 = {
      secret_name    = "cs-vpn-psk-prod-australia-southeast1-tunnel-1"
      secret_project = "cs-hc-1e3139d9a4264deca6431a05"
      secret_version = "1"
    }
  }

  bgp_ips = {
    prod-prod-australia-southeast1-gateway-tnl0 = cidrhost("169.254.0.0/16", random_integer.hostnum["prod-australia-southeast1-0"].result)
    prod-prod-australia-southeast1-gateway-tnl1 = cidrhost("169.254.0.0/16", random_integer.hostnum["prod-australia-southeast1-1"].result)
  }
}

resource "random_integer" "hostnum" {
  for_each = local.envs
  min      = 1
  max      = 65535
}

data "google_secret_manager_secret_version_access" "secret_data" {
  for_each = local.envs
  project  = each.value.secret_project
  secret   = each.value.secret_name
  version  = each.value.secret_version
}

module "cs-prod-prod-australia-southeast1-gateway" {
  source     = "terraform-google-modules/vpn/google//modules/vpn_ha"
  version    = "~> 4.0"
  name       = "prod-australia-southeast1-gateway"
  project_id = module.cs-project-vpc-host-prod.project_id
  region     = "australia-southeast1"
  network    = module.cs-vpc-prod-shared.network_self_link
  stack_type = "IPV4_IPV6"
  peer_external_gateway = {
    name            = "maroochydore"
    redundancy_type = "TWO_IPS_REDUNDANCY"
    interfaces = [
      {
        id         = 0
        ip_address = "45.115.232.159"
      },
      {
        id         = 1
        ip_address = "45.115.232.159"
      }
    ]
  }
  router_asn         = 64512
  keepalive_interval = 20
  tunnels = {
    tnl0 = {
      bgp_peer = {
        address = cidrhost("${local.bgp_ips.prod-prod-australia-southeast1-gateway-tnl0}/30", 2)
        asn     = 65001
      }
      bgp_session_name = "prod-australia-southeast1-gateway-tnl0"
      bgp_peer_options = {
        ip_address = cidrhost("${local.bgp_ips.prod-prod-australia-southeast1-gateway-tnl0}/30", 1)
      }
      ike_version                     = 2
      vpn_gateway_interface           = 0
      peer_external_gateway_interface = 0
      shared_secret                   = data.google_secret_manager_secret_version_access.secret_data["prod-australia-southeast1-0"].secret_data
    }
    tnl1 = {
      bgp_peer = {
        address = cidrhost("${local.bgp_ips.prod-prod-australia-southeast1-gateway-tnl1}/30", 2)
        asn     = 65001
      }
      bgp_session_name = "prod-australia-southeast1-gateway-tnl1"
      bgp_peer_options = {
        ip_address = cidrhost("${local.bgp_ips.prod-prod-australia-southeast1-gateway-tnl1}/30", 1)
      }
      ike_version                     = 2
      vpn_gateway_interface           = 1
      peer_external_gateway_interface = 1
      shared_secret                   = data.google_secret_manager_secret_version_access.secret_data["prod-australia-southeast1-1"].secret_data
    }
  }
}
