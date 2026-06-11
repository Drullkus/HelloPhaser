# Hello Phaser
Visible-source experimentation repo for containerizing website servers for usage with Phaser.

## Setup
These steps assume that you have installed [Docker](https://docs.docker.com/engine/install/) and [Docker's Compose plugin](https://docs.docker.com/compose/install/linux/#install-using-the-repository).

### Development Web Server
Executing `docker compose -f docker-compose-dev.yml up --build` runs the Vite dev
server in a container with hot-module-reload.

### Production Web Server
Executing `docker compose up --build` builds the TypeScript project and serves the
static output with nginx.

## Working without Docker
With [pnpm](https://pnpm.io/installation) installed locally:

```sh
cd webgame
pnpm install
pnpm dev
pnpm build
pnpm preview
```
