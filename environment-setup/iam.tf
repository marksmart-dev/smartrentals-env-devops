module "cs-folders-iam-0-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Sales/Non-Production"].id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-0-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Sales/Non-Production"].id,
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-1-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Operations/Non-Production"].id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-1-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Operations/Non-Production"].id,
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-2-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Managers/Non-Production"].id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-2-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Managers/Non-Production"].id,
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-3-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["API_Manager/Non-Production"].id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-3-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["API_Manager/Non-Production"].id,
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-4-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Sales/Development"].id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-4-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Sales/Development"].id,
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-5-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Operations/Development"].id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-5-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Operations/Development"].id,
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-6-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Managers/Development"].id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-6-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["Managers/Development"].id,
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-7-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["API_Manager/Development"].id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-folders-iam-7-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 8.0"

  folders = [
    local.folder_map["API_Manager/Development"].id,
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-projects-iam-8-loggingviewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-project-logging-monitoring.project_id,
  ]
  bindings = {
    "roles/logging.viewer" = [
      "group:gcp-logging-monitoring-viewers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-projects-iam-8-loggingprivateLogViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-project-logging-monitoring.project_id,
  ]
  bindings = {
    "roles/logging.privateLogViewer" = [
      "group:gcp-logging-monitoring-viewers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-projects-iam-8-bigquerydataViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-project-logging-monitoring.project_id,
  ]
  bindings = {
    "roles/bigquery.dataViewer" = [
      "group:gcp-logging-monitoring-viewers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-projects-iam-8-pubsubviewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-project-logging-monitoring.project_id,
  ]
  bindings = {
    "roles/pubsub.viewer" = [
      "group:gcp-logging-monitoring-viewers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-projects-iam-8-monitoringviewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-project-logging-monitoring.project_id,
  ]
  bindings = {
    "roles/monitoring.viewer" = [
      "group:gcp-logging-monitoring-viewers@smartrentalstsv.com.au",
    ]
  }
}

module "cs-projects-iam-9-bigquerydataViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-project-logging-monitoring.project_id,
  ]
  bindings = {
    "roles/bigquery.dataViewer" = [
      "group:gcp-security-admins@smartrentalstsv.com.au",
    ]
  }
}

module "cs-projects-iam-9-pubsubviewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-project-logging-monitoring.project_id,
  ]
  bindings = {
    "roles/pubsub.viewer" = [
      "group:gcp-security-admins@smartrentalstsv.com.au",
    ]
  }
}

module "cs-service-projects-iam-10-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-svc-sales-prod-svc-yr0e.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-sales-prod-service.id}",
    ]
  }
}

module "cs-service-projects-iam-11-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-svc-sales-nonprod-svc-yr0e.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-sales-nonprod-service.id}",
    ]
  }
}

module "cs-service-projects-iam-12-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-svc-operations-prod-svc-yr0e.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-operations-prod-service.id}",
    ]
  }
}

module "cs-service-projects-iam-13-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 8.0"

  projects = [
    module.cs-svc-operations-nonprod-svc-yr0e.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-operations-nonprod-service.id}",
    ]
  }
}
