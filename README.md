# HPDBAAS-MongoDB module

Terraform module to provision an instance of HPDBAAS-MongoDB in cloud account.

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform - v12
- kubectl

### Terraform providers

- IBM Cloud provider >= 1.5.3

## Module dependencies

None


## Example usage

```hcl-terraform
module "dev_infrastructure_hpdbaas_mongodb" {
  source = "github.com/ibm-garage-cloud/terraform-ibm-hpdbaas-mongodb.git?ref=v1.0.0"

  resource_group_name = var.resource_group_name
  resource_location   = var.region
  name_prefix         = "${var.name_prefix}_2"
  hpcs-region  = var.hpcs-region
  hpcs-name    = var.hpcs-name
  hpcs-key     = var.hpcs-key
  authorize-kms       = var.authorize-kms == "true"
}
```




