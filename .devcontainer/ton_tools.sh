
#!/usr/bin/env bash

releases=$(curl -s https://api.github.com/repos/ton-blockchain/ton/releases/latest)
cd /usr/bin 

#fift
fift=$(echo $releases | jq -r '.assets | .[] | select(.name=="fift-linux-x86_64") | .browser_download_url')
wget "$fift"
mv fift-linux-x86_64 fift

#func
func=$(echo $releases | jq -r '.assets | .[] | select(.name=="func-linux-x86_64") | .browser_download_url')
wget "$func"
mv func-linux-x86_64 func

#lite-client
lite_client=$(echo $releases | jq -r '.assets | .[] | select(.name=="lite-client-linux-x86_64") | .browser_download_url')
wget "$lite_client"
mv lite-client-linux-x86_64 lite-client

chmod +x func fift lite-client

#toncli
pip3 install toncli
