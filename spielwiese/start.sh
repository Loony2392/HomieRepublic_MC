#!/bin/bash

# Akzeptiere die EULA automatisch
echo "eula=true" > /minecraft/run/eula.txt

# Starte den Minecraft-Server mit 2GB RAM
java -Xms2G -Xmx2G -jar /minecraft/run/paperclip.jar --nogui
