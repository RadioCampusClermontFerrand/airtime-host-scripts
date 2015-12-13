#!/bin/sh

# on lance la pige d'antenne
arecord -f cd -d 3600 -t wav | lame -V 9  - /home/utilisateur/pige-antenne/$(date +%F-%H-%M).mp3

# on supprime ce qui est trop vieux (plus de 40 jours, la loi impose 1 mois)
find /home/utilisateur/pige-antenne/*mp3 -mtime +40 -name "*mp3" -exec rm {} -f \;
