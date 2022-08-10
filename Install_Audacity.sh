!/bin/sh

cd $HOME/Downloads
curl -L -o audacity.dmg "https://github.com/audacity/audacity/releases/download/Audacity-3.1.3/audacity-macos-3.1.3-Intel.dmg" #copia el instalador desde la fuente
hdiutil attach audacity.dmg #monta la unidad
ditto -rsrc "/Volumes/audacity-macos-3.1.3-Intel/Audacity.app" /Applications/Audacity.app #copia el ejecutable a Applications
hdiutil detach "/Volumes/audacity-macos-3.1.3-Intel" #desmonta la unidad
rm -rf audacity.dmg #elimina el instalador
cd -
