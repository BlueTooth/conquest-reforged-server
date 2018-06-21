FROM bluetooth/minecraft-server

MAINTAINER BlueTooth

CMD wget --output-document=forge-installer.jar https://adfoc.us/serve/sitelinks/?id=271228&url=https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.4.2709/forge-1.12.2-14.23.4.2709-installer.jar && \
java -jar forge-installer.jar --installServer && \
java -Xmx4096M -Xms4096M -jar forge-1.12.2-14.23.4.2709-universal.jar nogui
