# WatchdogStorj
Start storjshare on boot

## Usage
```console
git clone https://github.com/kznamst/WatchdogStorj.git
env > ~/.env
cd WatchdogStorj
chmod +x watchdog.sh
crontab -e
#add 
*/5 * * * * /home/storj/WatchdogStorj/watchdog.sh
@reboot /home/storj/WatchdogStorj/watchdog.sh
```

Source: https://docs.storj.io/v1.1/docs/setting-up-storj-share-on-a-raspberry-pi
