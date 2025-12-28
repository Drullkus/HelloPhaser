# Hello Phaser
Visible-source experimentation repo for containerizing website servers for usage with Phaser JS.

## Setup
These steps assume that you have installed [Docker](https://docs.docker.com/engine/install/) and [Docker's Compose plugin](https://docs.docker.com/compose/install/linux/#install-using-the-repository).

### Development Web Server
Executing `docker compose -f docker-compose-dev.yml up -d` in the command line will run the containerized web server in developent mode.

### Production Web Server
Executing `docker compose up -d` in the command line will run the containerized web server in production mode.
