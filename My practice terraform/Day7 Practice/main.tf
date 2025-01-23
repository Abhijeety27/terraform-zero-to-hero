provider "aws" {
  region = "ap-source-1"
}

provider "vault" {
    address = "http://3.110.42.175:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "a12c0da1-19a8-b089-52da-0dce2cb67c42"
      secret_id = "eeec5a5f-5b53-fcaf-98dc-ab1ccfbea083"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name  = "testSecret"
}