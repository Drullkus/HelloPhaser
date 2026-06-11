# --- Build stage: compile TypeScript and bundle with Vite ---
FROM node:25-alpine AS build

RUN npm install -g pnpm@10.12.1

WORKDIR /webgame

COPY webgame/package.json webgame/pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY webgame .
RUN pnpm build

FROM nginx:alpine AS serve

COPY --from=build /webgame/dist /usr/share/nginx/html

EXPOSE 80
