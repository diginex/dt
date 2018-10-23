FROM node:8.12.0-alpine

RUN npm install -g @angular/cli@7.0.2

COPY ./*.sh ./
RUN chmod +x /entrypoint.sh

RUN mkdir workspace
WORKDIR /workspace
ENTRYPOINT ["/entrypoint.sh"]