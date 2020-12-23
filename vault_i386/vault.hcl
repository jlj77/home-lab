# Full configuration options can be found at https://www.vaultproject.io/docs/configuration

# Custom additions
api_addr     = "https://eee.jarvis.lan:8200"
cluster_addr = "https://eee.jarvis.lan:8201"
log_level    = "debug"

telemetry {
  dogstatsd_addr        = "127.0.0.1:8125"
  dogstatsd_tags        = ["role:vault-server","datacenter:dc-2"]
  enable_hostname_label = true
  disable_hostname      = true
}

ui = true

#mlock = true
disable_mlock = true

#storage "file" {
#  path = "/opt/vault/data"
#}

storage "raft" {
  path                   = "/opt/vault/"
  node_id                = "raft_1"
  performance_multiplier = 1

  retry_join {
    leader_api_addr         = "https://amilo.jarvis.lan:8200"
    leader_ca_cert_file     = "/etc/consul.d/tls/unwin_pki_int-ca.pem"
    leader_client_cert_file = "/opt/vault/tls/tls.crt"
    leader_client_key_file  = "/opt/vault/tls/tls.key"
  }
}

#storage "consul" {
##  address = "127.0.0.1:8500"
#  address     = "127.0.0.1:8501"
#  scheme      = "https"
#  tls_ca_file = "/etc/consul.d/tls/unwin_pki_int-ca.pem"
#  path    = "vault/"
#}

## HTTP listener
#listener "tcp" {
#  address = "0.0.0.0:8200"
#  cluster_address = "0.0.0.0:8201"
#  tls_disable = true
#}

# HTTPS listener
listener "tcp" {
  address                            = "0.0.0.0:8200"
  cluster_address                    = "0.0.0.0:8201"
  tls_disable                        = "false"
  tls_cert_file                      = "/opt/vault/tls/tls.crt"
  tls_key_file                       = "/opt/vault/tls/tls.key"
  tls_min_version                    = "tls13"
  tls_require_and_verify_client_cert = "true"
  tls_client_ca_file                 = "/etc/consul.d/tls/unwin_pki_int-ca.pem"
}

seal "transit" {
  address         = "https://vault-s0.jarvis.lan:8200"
  token           = "s.redacted"
  disable_renewal = "false"

  # Key configuration
  key_name        = "autounseal"
  mount_path      = "transit/"

  # TLS Configuration
  tls_ca_cert     = "/etc/consul.d/tls/unwin_pki_int-ca.pem"
  tls_client_cert = "/opt/vault/tls/tls.crt"
  tls_client_key  = "/opt/vault/tls/tls.key"
  tls_server_name = "vault.dc-1.consul"
  tls_skip_verify = "false"
}

# Example AWS KMS auto unseal
#seal "awskms" {
#  region = "us-east-1"
#  kms_key_id = "REPLACE-ME"
#}

# Example HSM auto unseal
#seal "pkcs11" {
#  lib            = "/usr/vault/lib/libCryptoki2_64.so"
#  slot           = "0"
#  pin            = "AAAA-BBBB-CCCC-DDDD"
#  key_label      = "vault-hsm-key"
#  hmac_key_label = "vault-hsm-hmac-key"
#}
