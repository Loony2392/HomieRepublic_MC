# Basisimage mit Java 17
FROM openjdk:17-jdk-alpine

# Arbeitsverzeichnis erstellen
WORKDIR /minecraft

# Kopiere die Konfigurationen in das Image
COPY config/ /minecraft/config/

# Lade die neueste Waterfall-Version herunter
RUN mkdir -p /minecraft/run && \
    curl -o /minecraft/run/waterfall.jar https://papermc.io/api/v2/projects/waterfall/versions/1.20/builds/473/downloads/waterfall-1.20-473.jar

# Startskript kopieren
COPY start.sh /minecraft/

# Exponiere den Standard-Proxy-Port
EXPOSE 25577

# Start des Proxy-Servers
ENTRYPOINT ["sh", "start.sh"]
