#!/bin/bash

# Akzeptiere die EULA automatisch
echo "eula=true" > /minecraft/run/eula.txt

# Starte den Minecraft-Server mit 2GB RAM
java -Xms4G -Xmx4G -jar /minecraft/run/paperclip.jar --nogui