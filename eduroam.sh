#!/bin/sh
# Configure eduroam with nmcli
echo "Enter ifname (e.g. wlp2s0): "
read IFNAME
echo "Enter CID: "
read CID
echo "Enter password: "
read -s PSW

echo "nmcli connection add type wifi ifname '${IFNAME}' ssid 'eduroam' 802-11-wireless-security.key-mgmt 'wpa-eap' 802-1x.eap 'peap' 802-1x.anonymous-identity 'anonymous@chalmers.se' 802-1x.identity '${CID}@chalmers.se' connection.id 'eduroam' 802-1x.password '${PSW}' 802-1x.phase2-autheap 'mschapv2'" | sh
