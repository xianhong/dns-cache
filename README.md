# Containerized dnsmasq & dnscrypt-proxy

This container allows you to run a dnscrypt-proxy  together with a dnsmasq caching server.

One would want to do this if they want to make encrypted DNS queries, and cache them for better performance.

To run this container you can build it using docker.

```docker build -t dns-cache .```

Or you can just pull it from the docker hub.

```docker pull yangxh/dns-cache```

To run it just do:

``docker run -d --rm --name dns-cache --cap-add=NET_ADMIN  -p 53:53/udp -e RESOLVER_IP=<IP_addr_OF_Dnscrypt_server>  
 -v <host_folder_holding_dnsmasq_configuration_files>:/etc/dnsmasq.d 
 -e PROVIDER_KEY=<Provider-key> yangxh/dns-cache``


