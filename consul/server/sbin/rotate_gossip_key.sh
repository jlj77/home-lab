#!/usr/bin/env bash
# Setup Consul address info
export CONSUL_HTTP_ADDR="https://localhost:8501"

# The new key will be in a file generated by consul-template
NEW_KEY=`cat /opt/consul_/gossip/gossip.key | sed -e '/^$/d'`

# Install the key
consul keyring -install ${NEW_KEY}

# Set it as primary
consul keyring -use ${NEW_KEY}

# Retrieve all keys used by Consul
KEYS=`curl -s ${CONSUL_HTTP_ADDR}/v1/operator/keyring`

ALL_KEYS=`echo ${KEYS} | jq -r '.[].Keys| to_entries[].key' | sort | uniq`

for i in `echo ${ALL_KEYS}`; do
  if [ $i != ${NEW_KEY} ] ; then
    consul keyring -remove $i
  fi
done