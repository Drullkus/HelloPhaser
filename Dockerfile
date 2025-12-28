FROM node:25

# PNPM needs a global dir defined
ENV PNPM_HOME=/usr/local/pnpm
ENV PATH=$PNPM_HOME:$PATH

WORKDIR /webgame

# Install pnpm
RUN npm install -g pnpm

CMD pnpm run dev --host
