FROM node:8.12.0-stretch

RUN npm install -g @angular/cli@7.0.2
RUN npm install typeorm -g
RUN apt-get update
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
RUN mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
RUN ls -al /etc/apt/trusted.gpg.d/
RUN wget -q https://packages.microsoft.com/config/debian/9/prod.list
RUN  mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
RUN chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
RUN chown root:root /etc/apt/sources.list.d/microsoft-prod.list

RUN apt-get install -y apt-transport-https ca-certificates apt-utils
RUN apt-get update
RUN apt-get install -y dotnet-sdk-2.1

COPY ./*.sh ./
RUN chmod +x /entrypoint.sh
RUN mkdir workspace
WORKDIR /workspace
ENTRYPOINT ["/entrypoint.sh"]