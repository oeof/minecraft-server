#!/bin/bash

# Create first terminal tab and run command
gnome-terminal --tab -- bash -c 'cd server && sudo java -jar server.jar; exec bash'

# Create second terminal tab and run command
gnome-terminal --tab -- bash -c 'cd bungee && sudo java -jar bungee.jar; exec bash'

# Forward and make ports public
gh codespace ports forward 25565 --public
gh codespace ports forward 8081 --public

echo "Your eaglercraft server is setup!"
