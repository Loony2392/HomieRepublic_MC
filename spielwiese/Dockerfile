# Basisimage mit Java 17
FROM openjdk:17-jdk-alpine

# Arbeitsverzeichnis erstellen
WORKDIR /minecraft

# Installiere curl
RUN apk add --no-cache curl

# Kopiere die Konfiguration (paper.yml) in das Image
ARG CONFIG
COPY $CONFIG /minecraft/config/paper.yml

# Lade die neueste PaperMC-Version herunter
RUN mkdir -p /minecraft/run && \
    curl -o /minecraft/run/paperclip.jar https://papermc.io/api/v2/projects/paper/versions/1.20/builds/150/downloads/paper-1.20-150.jar

# Akzeptiere die EULA automatisch
RUN echo "eula=true" > /minecraft/run/eula.txt

# Exponiere den Minecraft-Port
EXPOSE 25565

# Start des Minecraft-Servers
ENTRYPOINT ["sh", "start.sh"]
