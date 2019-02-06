FROM gists/dnscrypt-proxy as builder
FROM alpine:latest
RUN apk --no-cache add dnsmasq libsodium ldns
COPY --from=builder /usr/sbin/dnscrypt-proxy /usr/sbin/
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENV PROVIDER_NAME  2.dnscrypt-cert.example.com
ENV RESOLVER_PORT	443
ENTRYPOINT ["/entrypoint.sh"]
