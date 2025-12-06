module "cs-common" {
  
  source  = "terraform-google-modules/folders/google"
  version = "~> 5.0"
  deletion_protection = false
  parent = "organizations/${var.org_id}"
  names = [
    "Common",
  ]
}

locals {
  deletion_protection = false
  folders_level_1 = compact(flatten([for parent, children in var.folders : length(children) == 0 ?
  [] : [for child, _ in children : join("/", [parent, child])]]))

  # this level is not needed for all resource hierarchies
  folders_level_2 = compact(flatten([for parent, children in var.folders : length(children) == 0 ?
    [] : [for child, grandchildren in children : length(grandchildren) == 0 ?
  [] : [for grandchild, _ in grandchildren : join("/", [parent, child, grandchild])]]]))

  # path to folder resource map
  # this map is used to reference folder from the correct module, such as
  # {
  #   "Team 1" => module.cs-folders-level-0["Team 1"]
  #   "Team 1/Production" => module.cs-folders-level-1["Team 1/Production"]
  #   "Team 1/Production/Department 1" => module.cs-folders-level-2["Team 1/Production/Department 1"]
  # }
  folder_map = merge(
    { "Common" = module.cs-common },
    { for k, v in var.folders : k => module.cs-folders-level-0[k] },
    { for path in local.folders_level_1 : path => module.cs-folders-level-1[path] },
    { for path in local.folders_level_2 : path => module.cs-folders-level-2[path] }
  )
}

module "cs-folders-level-0" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 5.0"

  for_each = var.folders
  parent   = "organizations/${var.org_id}"
  names    = each.key[*]
}

module "cs-folders-level-1" {
  /*
folder ids from this module are referenced with a full path and a
folder name, such as
`module.cs-folders-level-1["Sales/Production"].id`
*/
  source  = "terraform-google-modules/folders/google"
  version = "~> 5.0"

  for_each = toset(local.folders_level_1)
  parent   = module.cs-folders-level-0[element(split("/", each.value), 0)].id
  names    = [element(split("/", each.value), 1)]
}

module "cs-folders-level-2" {
  /*
this module is not needed for all resource hierarchies
folder ids from this module are referenced with a full path and a
folder name, such
as`module.cs-folders-level-2["Sales/Production/folder-at-level-3"].id`
*/
  source  = "terraform-google-modules/folders/google"
  version = "~> 5.0"

  for_each = toset(local.folders_level_2)
  parent   = module.cs-folders-level-1[join("/", slice(split("/", each.value), 0, 2))].id
  names    = [element(split("/", each.value), 2)]
}

resource "time_sleep" "wait_for_folder_creations" {
  depends_on      = [module.cs-folders-level-0, module.cs-folders-level-1, module.cs-folders-level-2]
  create_duration = "60s"
}

resource "google_resource_manager_capability" "capability" {
  for_each = toset(var.application_enabled_folder_paths)

  provider        = google-beta
  value           = true
  parent          = local.folder_map[each.key].id
  capability_name = "app-management"
  depends_on      = [time_sleep.wait_for_folder_creations]
}
