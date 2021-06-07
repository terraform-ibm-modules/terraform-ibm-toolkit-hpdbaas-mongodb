module "service_authorization" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-iam-service-authorization.git"

  source_service_name = "hyperp-dbaas-mongodb"
  target_service_name = "hs-crypto"
  roles = ["Reader"]
}
