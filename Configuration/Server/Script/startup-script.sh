
#!/bin/bash
#startup script executed via a new rule in crontab "crontab -e" -> "@reboot ..."
amixer set Master 100%
pulseaudio -D
bluetoothctl << EOF
power on
discoverable on
pairable on
exit
EOF
