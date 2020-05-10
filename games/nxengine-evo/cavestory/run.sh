#!/bin/bash

# if its the first run
if [ ! -f /home/cpi/games/nxengine-evo/cavestory/installed.txt ]; then
    chmod +x /home/cpi/games/nxengine-evo/cavestory/extract.so
	chmod +x /home/cpi/games/nxengine-evo/cavestory/nx.so
	#copy data
	cp -rf /home/cpi/games/nxengine/cavestory/ /home/cpi/games/nxengine-evo/
	cp -rf /home/cpi/games/nxengine-evo/cavestory/newFiles/data /home/cpi/games/nxengine-evo/cavestory/
	cp -rf /home/cpi/games/nxengine-evo/cavestory/newFiles/Config.dat /home/cpi/games/nxengine-evo/cavestory/
	cp -rf /home/cpi/games/nxengine-evo/cavestory/newFiles/settings.dat /home/cpi/games/nxengine-evo/cavestory/
	#extract data.
	cd /home/cpi/games/nxengine-evo/cavestory/
	./extract.so > ./installed.txt
fi

# Remap keys to (set start as map?)
#xmodmap -e "keysym enter = x"

# Run application
/home/cpi/games/nxengine-evo/cavestory/nx.so

# Restore xmodmap keymappings.
# NOTE: Reboot or run this command manually if keymappings fail to restore due to crash, etc.
#setxkbmap
