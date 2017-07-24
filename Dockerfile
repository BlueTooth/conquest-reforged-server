FROM bluetooth/minecraft-server

MAINTAINER BlueTooth

CMD wget --output-document=forge-installer.jar http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.10.2-12.18.3.2422/forge-1.10.2-12.18.3.2422-installer.jar && \
java -jar forge-installer.jar --installServer && \
cd mods && \
wget http://optifine.net/downloadx?f=OptiFine_1.10.2_HD_U_E3.jar&x=91653d5e55476f5c0a8caf0e2c645443 && \
wget https://minecraft.curseforge.com/projects/conquest-reforged/files/2448772/download && \
cd .. && \
mkdir resourcepacks && \
cd resourcepacks && \
wget https://minecraft.curseforge.com/projects/conquest-reforged-resource-pack/files/2448768/download && \
cd .. && \
java -Xmx4096M -Xms4096M -jar forge-1.10.2-12.18.3.2422-universal.jar --installServer nogui
