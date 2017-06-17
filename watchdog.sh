
#!/bin/bash
. $HOME/.bashrc
. $HOME/.profile
. $HOME/.env
APP=$(ps aux | grep -v grep | grep storjshare)
if [ -z "$APP" ];
then
echo "Restart storjshare-daemon"
storjshare daemon
fi
APP=$(ps aux | grep -v grep | grep 'farmer.js --config')
if [ -z "$APP" ];
then
echo "Restart farmers"
storjshare start --config /home/storj/config.json
#storjshare start --config /home/admin1/.config/storjshare/configs/eb6b232237ec6cb56f0ba6a7272940c4c584bacb.json
fi
#Source: https://docs.storj.io/v1.1/docs/setting-up-storj-share-on-a-raspberry-pi
