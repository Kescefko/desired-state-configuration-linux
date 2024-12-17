# Download the OMI installation package
# SSL version must be suported by the package which is installed on the server
wget https://github.com/microsoft/omi/releases/download/v1.9.1-0/omi-1.9.1-0.ssl_300.ulinux.s.x64.deb

# Install the OMI package
sudo dpkg -i ./omi-1.9.1-0.ssl_300.ulinux.s.x64.deb

# If there are missing dependencies, fix them
sudo apt-get install -f