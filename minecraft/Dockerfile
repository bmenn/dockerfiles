FROM openjdk:8-jre-slim

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get clean

EXPOSE 25565
ARG MINECRAFT_DOWNLOAD_URL=https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar
RUN mkdir -p /opt/minecraft/lib && \
    curl -o /opt/minecraft/lib/minecraft_server.jar -L ${MINECRAFT_DOWNLOAD_URL}

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
