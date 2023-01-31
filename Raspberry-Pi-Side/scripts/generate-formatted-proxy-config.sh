rm /scripts/formatted-cams-list.txt &&
cat /scripts/camera-list.txt | xargs avahi-resolve-host-name -4 | tr '\n' | xargs -n2 /scripts/config-maker.sh >> /scripts/formatted-cams-list.txt

