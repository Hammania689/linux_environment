
# Change pulse default settings
# Removing suspend on idle
sudo cp default.pa /etc/pulse/default.pa 

# Add changeSinks to path and change default sink to sink 1
sudo cp changeSinks /usr/bin/changeSinks
changeSinks 1

