#!/user/bin/env bash

sudo yum install -y wget
wget https://raw.githubusercontent.com/logrhythm/versions/master/lrctl
chmod +x lrctl
# For CentOS 8:
# sudo yum erase podman buildah
echo -e "y\ny" | ./lrctl init
./lrctl metrics start
./lrctl open-collector start
