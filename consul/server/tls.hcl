verify_incoming = true
verify_outgoing = true
verify_server_hostname = true
ca_file = "/etc/consul.d/tls/unwin_pki_int-ca.pem"
cert_file = "/etc/consul.d/tls/consul-s0.dc-1.consul.crt"
key_file = "/etc/consul.d/tls/consul-s0.dc-1.consul.key"
ports = {
  http = -1
  https = 8501
}
