FROM sigp/lighthouse:latest-unstable AS lighthouse
FROM sigp/lcli:latest-unstable AS lcli

FROM node:16-bullseye

COPY --from=lighthouse /usr/local/bin/lighthouse /usr/local/bin/lighthouse
COPY --from=lcli /usr/local/bin/lcli /usr/local/bin/lcli

RUN apt update && apt install -y curl git

# Install ganache-cli.
RUN npm install -g ganache-cli@latest

# Clone Lighthouse.
RUN git clone -b unstable https://github.com/sigp/lighthouse.git /lighthouse

# Patch Lighthouse.
COPY ./scripts /scripts
RUN bash /scripts/patch.sh

ENTRYPOINT bash /scripts/start.sh
