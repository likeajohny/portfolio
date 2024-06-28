FROM node:lts-alpine as build

WORKDIR /app

COPY . .

RUN npm install -g pnpm && \
    pnpm install --frozen-lockfile --production && \
    pnpm build

FROM caddy:latest as runtime

COPY --from=build /app/docker/Prod.Caddyfile /etc/caddy/Caddyfile
COPY --from=build /app/dist /srv/portfolio
