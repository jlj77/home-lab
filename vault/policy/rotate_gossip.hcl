# Policy to allow the rotate_key script to read the current value of the Consul gossip encryption key
path "kv-v2/+/consul/config/encryption" {
  capabilities = [ "read" ]
}