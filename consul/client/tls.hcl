verify_incoming = false
verify_outgoing = true
verify_server_hostname = true
ca_file = "/etc/consul.d/tls/unwin_pki_int-ca.pem"
cert_file = "/etc/consul.d/tls/client.dc-1.consul.crt"
key_file = "/etc/consul.d/tls/client.dc-1.consul.key"
ports = {
  http = -1
  https = 8501
}
