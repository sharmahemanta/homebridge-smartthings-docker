FROM node:lts-alpine

RUN npm install -g --unsafe-perm homebridge \
    && npm install -g homebridge-smartthings \
    && mkdir -p /root/.homebridge

COPY config.json /root/.homebridge/config.json

CMD ["homebridge"]
