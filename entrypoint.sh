#!/bin/sh
/usr/sbin/dnsmasq -C /etc/dnsmasq.conf
/usr/sbin/dnscrypt-proxy /usr/etc/dnscrypt-proxy.conf --local-address=127.0.0.1:55 \
--resolver-address=${RESOLVER_IP}:${RESOLVER_PORT} --provider-key=${PROVIDER_KEY}  --provider-name=${PROVIDER_NAME}
