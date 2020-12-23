# Manage auth methods across Vault
path "auth/*" {
capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "sys/auth/*" {
capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "sys/auth" {
capabilities = ["read"]
}

# Create, update, and delete audit devices
path "sys/audit/*" {
capabilities = ["create", "update", "delete", "sudo"]
}

# List audit devices (additional req of sudo)
path "sys/audit" {
capabilities = ["read", "sudo"]
}

# Create and manage ACL policies
path "sys/policies/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

# List policies
path "sys/policies/" {
capabilities = ["list"]
}

# All capabilities related to Consul config and others
path "kv-v2/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# List all configs
path "kv-v2/" {
  capabilities = ["list"]
}

# UNUSED, TO DATE
## List, create, update, and delete key/value secrets mounted under home/
#path "home/*" {
#capabilities = ["create", "read", "update", "delete", "list"]
#}
#
## List home/
#path "home/" {
#capabilities = ["list"]
#}
#
## Prevent even full_admin users from reading user secrets
## But allow them to create, update, delete, and list them
#path "home/users/*" {
#capabilities = ["create", "update", "delete", "list"]
#}
#
## List, create, update, and delete key/value secrets mounted under kv/
#path "kv/*" {
#capabilities = ["create", "read", "update", "delete", "list"]
#}
#
# List kv/
#path "kv/" {
#capabilities = ["list"]
#}
#
## Prevent full_admin users from reading user secrets
## But allow them to create, update, delete, and list them
## Creating and updating are explicitly included here
## Deleting and listing are implied by capabilities given on kv/* which
## includes kv/delete/users/* and kv/metadata/users/* paths
#path "kv/data/users/*" {
#capabilities = ["create", "update"]
#}

# Consul secrets engine
path "consul/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

# Cubbyhole secrets engine
path "cubbyhole/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

# Identity secrets engine
path "identity/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

# PKI secrets engine
path "unwin_pki/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

# PKI (intermediate CA) secrets engine
path "unwin_pki_int/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

# Transit secrets engine
path "transit/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

# Create and manage secrets engines broadly across Vault
path "sys/mounts/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

# List sys/mounts/
path "sys/mounts" {
capabilities = ["read"]
}

# Check token capabilities
path "sys/capabilities" {
capabilities = ["create", "update"]
}

# Check token accessor capabilities
path "sys/capabilities-accessor" {
capabilities = ["create", "update"]
}

# Check token's own capabilities
path "sys/capabilities-self" {
capabilities = ["create", "update"]
}

# Audit hash
path "sys/audit-hash" {
capabilities = ["create", "update"]
}

# Health checks
path "sys/health" {
capabilities = ["read"]
}

# Host info
path "sys/host-info" {
capabilities = ["read"]
}

# Key Status
path "sys/key-status" {
capabilities = ["read"]
}

# Leader
path "sys/leader" {
capabilities = ["read"]
}

# Plugins catalog
path "sys/plugins/catalog/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

# List sys/plugins/catalog
path "sys/plugins/catalog" {
capabilities = ["read"]
}

# Read system configuration state
path "sys/config/state/sanitized" {
capabilities = ["read"]
}

# Use system tools
path "sys/tools/*" {
capabilities = ["create", "update"]
}

# Generate OpenAPI docs
path "sys/internal/specs/openapi" {
capabilities = ["read"]
}

# Lookup leases
path "sys/leases/lookup" {
capabilities = ["create", "update"]
}

# Renew leases
path "sys/leases/renew" {
capabilities = ["create", "update"]
}

# Revoke leases
path "sys/leases/revoke" {
capabilities = ["create", "update"]
}

# Tidy leases
path "sys/leases/tidy" {
capabilities = ["create", "update"]
}

# Telemetry
path "sys/metrics" {
capabilities = ["read"]
}

# Seal Vault
path "sys/seal" {
capabilities = ["create", "update", "sudo"]
}

# Unseal Vault
path "sys/unseal" {
capabilities = ["create", "update", "sudo"]
}

# Step Down
path "sys/step-down" {
capabilities = ["create", "update", "sudo"]
}

# Wrapping
path "sys/wrapping/*" {
capabilities = ["create", "update"]
}