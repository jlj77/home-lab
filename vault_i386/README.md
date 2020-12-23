# Vault server configuration

Working configuration for linux_i386.

Note that `systemd` was unhappy with the service, and so a `Timeout` of `Infinity`, while undesirable, was required to prevent it from killing my healthy Vault server.

Also, note that I used this smaller cluster to (successfully) test auto-unseal using the Transit Secrets Engine.

Finally, note that `telemetry` stanza isn't working as expected, and should be considered a work in progress.
