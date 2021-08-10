FROM haproxy

COPY haproxy.cfg /usr/local/etc/haproxy/

ENV PROXY_HOST=registry
ENV PROXY_PORT=5000

ENV AUTH_USERNAME=username
ENV AUTH_PASSWORD=password
