# Home lab configuration files

A collection of configuration files for my Vault HA cluster, backed by a Consul cluster. This Vault houses both my root CA, and my intermediate CA, as a proof-of-concept only. All cluster and back-end communication is secured with certificates issued by my intermediate CA.

I have also implemented transit auto-unseal with a smaller Vault cluster.

I have a process for rotating the gossip key in my main cluster. It could be invoked by a cron job to completely automate the process. See consul/server for more information on this.

Finally, I've included Telegraf configuration files for passing metrics on each instance of Consul and Vault, to a remote instance of InfluxDB.

I am currently using Grafana to visualise the aforementioned data sources. I've also started using Grafana Loki (and Promtail) to collect logs.
