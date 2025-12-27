FROM node:25

# PNPM needs a global dir defined
ENV PNPM_HOME=/usr/local/pnpm
ENV PATH=$PNPM_HOME:$PATH

WORKDIR /webgame

# Install pnpm then use it to obtain the http-server
RUN npm install -g pnpm
RUN pnpm add -g http-server
#RUN pnpm install -g phaser@v3.90.0

CMD "http-server" "webgame" "-p" "80"
