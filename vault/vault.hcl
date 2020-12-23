# Full configuration options can be found at https://www.vaultproject.io/docs/configuration

# Custom additions
api_addr = "https://vault-s0.jarvis.lan:8200"
cluster_addr = "https://vault-s0.jarvis.lan:8201"

telemetry {
  dogstatsd_addr   = "127.0.0.1:8125"
  disable_hostname = true
}

ui = true

#mlock = true
disable_mlock = true

#storage "file" {
#  path = "/opt/vault/data"
#}

storage "consul" {
  address     = "127.0.0.1:8501"
  scheme      = "https"
  tls_ca_file = "/etc/consul.d/tls/unwin_pki_int-ca.pem"
  path        = "vault/"
}

# HTTP listener
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
