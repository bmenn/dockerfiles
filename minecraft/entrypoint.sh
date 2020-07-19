#!/bin/bash
EULA=${EULA:-false}
JAVA_OPTS=${JAVA_OPTS:-"-Xmx1024M -Xms1024M"}

echo "eula=${EULA}" > eula.txt
java ${JAVA_OPTS} -jar /opt/minecraft/lib/minecraft_server.jar nogui
