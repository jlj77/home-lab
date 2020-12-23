# Consul server configuration

Typical Consul server configuration on amd64.

This gossip key rotation process requires consul-template, and that VAULT_TOKEN is set in the environment, to a token with the proper permissions; these permissions are defined by vault/policy/rotate-gossip.hcl. (Note: the `auth/token/create-orphan` path should be used to create this token.)

Note that the script to rotate the gossip key still needs work. The API call isn't working, so old keys need to be manually removed from the keyring, for the moment.
