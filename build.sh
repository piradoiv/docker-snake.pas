# Dependencies
apt update
DEBIAN_FRONTEND=noninteractive apt-get -yq git fpc

# Build
git clone –depth 1 https://github.com/piradoiv/snake.pas.git /snake.pas
cd /snake.pas && make
mv /snake.pas/snake /snake

# Cleanup
rm -rf /snake.pas
apt remove fpc git -q -y
apt autoclean -q -y
apt autoremove -q -y
apt purge -q -y
apt clean -y
