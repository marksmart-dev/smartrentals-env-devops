# VPC and Subnets
module "cs-vpc-prod-shared" {
  source  = "terraform-google-modules/network/google"
  version = "~> 9.0"

  project_id   = module.cs-project-vpc-host-prod.project_id
  network_name = "vpc-prod-shared"

  subnets = [
    {
      subnet_name               = "subnet-prod-1"
      subnet_ip                 = "10.0.0.0/24"
      subnet_region             = "australia-southeast1"
      subnet_private_access     = true
      subnet_flow_logs          = true
      subnet_flow_logs_sampling = "0.5"
      subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
      subnet_flow_logs_interval = "INTERVAL_10_MIN"
    },
    {
      subnet_name               = "subnet-prod-2"
      subnet_ip                 = "192.168.0.0/16"
      subnet_region             = "australia-southeast2"
      subnet_private_access     = true
      subnet_flow_logs          = true
      subnet_flow_logs_sampling = "0.5"
      subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
      subnet_flow_logs_interval = "INTERVAL_10_MIN"
    },
  ]

  firewall_rules = [
    {
      name      = "vpc-prod-shared-allow-icmp"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "icmp"
          ports    = []
        }
      ]
      ranges = [
        "10.128.0.0/9",
      ]
    },
    {
      name      = "vpc-prod-shared-allow-ssh"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "tcp"
          ports    = ["22"]
        }
      ]
      ranges = [
        "35.235.240.0/20",
      ]
    },
    {
      name      = "vpc-prod-shared-allow-rdp"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "tcp"
          ports    = ["3389"]
        }
      ]
      ranges = [
        "35.235.240.0/20",
      ]
    },
  ]
}

# VPC and Subnets
module "cs-vpc-nonprod-shared" {
  source  = "terraform-google-modules/network/google"
  version = "~> 9.0"

  project_id   = module.cs-project-vpc-host-nonprod.project_id
  network_name = "vpc-nonprod-shared"

  subnets = [
    {
      subnet_name               = "subnet-non-prod-1"
      subnet_ip                 = "10.0.0.0/24"
      subnet_region             = "australia-southeast1"
      subnet_private_access     = true
      subnet_flow_logs          = true
      subnet_flow_logs_sampling = "0.5"
      subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
      subnet_flow_logs_interval = "INTERVAL_10_MIN"
    },
    {
      subnet_name               = "subnet-non-prod-2"
      subnet_ip                 = "192.168.0.0/16"
      subnet_region             = "australia-southeast2"
      subnet_private_access     = true
      subnet_flow_logs          = true
      subnet_flow_logs_sampling = "0.5"
      subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
      subnet_flow_logs_interval = "INTERVAL_10_MIN"
    },
  ]

  firewall_rules = [
    {
      name      = "vpc-nonprod-shared-allow-icmp"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "icmp"
          ports    = []
        }
      ]
      ranges = [
        "10.128.0.0/9",
      ]
    },
    {
      name      = "vpc-nonprod-shared-allow-ssh"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "tcp"
          ports    = ["22"]
        }
      ]
      ranges = [
        "35.235.240.0/20",
      ]
    },
    {
      name      = "vpc-nonprod-shared-allow-rdp"
      direction = "INGRESS"
      priority  = 10000
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
      allow = [
        {
          protocol = "tcp"
          ports    = ["3389"]
        }
      ]
      ranges = [
        "35.235.240.0/20",
      ]
    },
  ]
}

resource "google_compute_router" "router_prod_sydney" {
  name    = "router-prod-sydney"
  region  = "australia-southeast1"
  network = module.cs-vpc-prod-shared.network_name
  project = module.cs-project-vpc-host-prod.project_id
}

resource "google_compute_router_nat" "nat_prod_sydney" {
  name                               = "nat-prod-sydney"
  router                             = google_compute_router.router_prod_sydney.name
  region                             = google_compute_router.router_prod_sydney.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  project                            = module.cs-project-vpc-host-prod.project_id
}

resource "google_compute_router" "router_prod_melbourne" {
  name    = "router-prod-melbourne"
  region  = "australia-southeast2"
  network = module.cs-vpc-prod-shared.network_name
  project = module.cs-project-vpc-host-prod.project_id
}

resource "google_compute_router_nat" "nat_prod_melbourne" {
  name                               = "nat-prod-melbourne"
  router                             = google_compute_router.router_prod_melbourne.name
  region                             = google_compute_router.router_prod_melbourne.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  project                            = module.cs-project-vpc-host-prod.project_id
}
