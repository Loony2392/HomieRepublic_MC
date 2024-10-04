# Basisimage mit Java 17
FROM openjdk:17-jdk-alpine

# Arbeitsverzeichnis erstellen
WORKDIR /minecraft

# Kopiere die Konfigurationen und Plugins in das Image
COPY config/ /minecraft/config/
COPY plugins/ /minecraft/plugins/

# Lade die neueste PaperMC-Version herunter
RUN mkdir -p /minecraft/run && \
    curl -o /minecraft/run/paperclip.jar https://papermc.io/api/v2/projects/paper/versions/1.20/builds/150/downloads/paper-1.20-150.jar

# Startskript kopieren
COPY start.sh /minecraft/

# Exponiere den Standard-Minecraft-Port
EXPOSE 25565

# Start des Minecraft-Servers
ENTRYPOINT ["sh", "start.sh"]
