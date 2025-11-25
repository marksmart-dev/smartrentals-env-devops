org_id          = "403564791417"
billing_account = "01A890-50B478-5C132C"

/*
The folder map is limited to three levels
The environment names are "Production", "Non Production" and "Development"
they are potentially referenced in iam.tf, service_projects.tf, and projects.tf
if you rename, e.g. "Production" to "Prod", you will need to find references like
module.cs-folders-level-1["Team 1/Production"].ids["Production"] and rename to
module.cs-folders-level-1["Team 1/Prod"].ids["Prod"]
*/
folders = {
  "Sales" : {
    "Production" : {},
    "Non-Production" : {},
    "Development" : {},
  },
  "Operations" : {
    "Production" : {},
    "Non-Production" : {},
    "Development" : {},
  },
  "Managers" : {
    "Production" : {},
    "Non-Production" : {},
    "Development" : {},
  },
  "API_Manager" : {
    "Production" : {},
    "Non-Production" : {},
    "Development" : {},
  },
}
application_enabled_folder_paths = [
  "Sales/Production",
  "Sales/Non-Production",
  "Sales/Development",
  "Operations/Production",
  "Operations/Non-Production",
  "Operations/Development",
  "Managers/Production",
  "Managers/Non-Production",
  "Managers/Development",
  "API_Manager/Production",
  "API_Manager/Non-Production",
  "API_Manager/Development",
]
