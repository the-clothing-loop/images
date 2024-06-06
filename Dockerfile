FROM caddy:2-alpine

COPY ./Caddyfile /etc/caddy/Caddyfile

ENTRYPOINT caddy run --config /etc/caddy/Caddyfile