FROM bluetooth/minecraft-server

MAINTAINER BlueTooth

CMD wget --output-document=forge-installer.jar https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.4.2705/forge-1.12.2-14.23.4.2705-installer.jar && \
java -jar forge-installer.jar --installServer && \
java -Xmx4096M -Xms4096M -jar forge-1.12.2-14.23.4.2705-universal.jar nogui
