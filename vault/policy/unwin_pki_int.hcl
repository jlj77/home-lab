path "unwin_pki_int/issue/*" {
	capabilities = ["create", "update"]
}

path "unwin_pki_int/certs" {
	capabilities = ["list"]
}

path "unwin_pki_int/revoke" {
	capabilities = ["create", "update"]
}

path "unwin_pki_int/tidy" {
	capabilities = ["create", "update"]
}

path "unwin_pki/cert/ca" {
	capabilities = ["read"]
}

path "auth/token/renew" {
	capabilities = ["update"]
}

path "auth/token/renew-self" {
	capabilities = ["update"]
}