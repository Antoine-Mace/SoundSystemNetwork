#!/bin/bash
#startup script executed via a new rule in crontab "crontab -e" -> "@reboot ..."
amixer set Master 100%
aplay /home/pi/soundsystemnetwork/sound-sample/start-sample.wav
pulseaudio -D