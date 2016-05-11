choice=$(whiptail --title "Accessing to a server" --menu "Choose a server" 20 60 10 \
  "PROD" "Serveur de PROD" \
  "PREPROD" "Serveur de PREPROD" \
  "ENERGIEPLUS" "Serveur Energie+" \
  "PRODCSPS" "Serveur de prod CSPS+" \
  "APPS01" "Serveur APPS01" \
  "SUIVIPLUSPROD" "Serveur SUIVI+ PROD" \
  "SUIVIPLUSPREPROD" "Serveur SUIVI+ PREPROD" \
  "RELEVEPLUS" "Serveur Releve+" 3>&1 1>&2 2>&3)

if [ "$choice" = "PROD" ]; then
  ssh acousin@ns3269944.ovh.net
elif [ "$choice" = "PREPROD" ]; then
  ssh acousin@94.23.17.135
elif [ "$choice" = "ENERGIEPLUS" ]; then
  ssh acousin@37.59.248.167 -p 22022
elif [ "$choice" = "PRODCSPS" ]; then
  ssh acousin@37.59.248.166 -p 22222
elif [ "$choice" = "APPS01" ]; then
  ssh acousin@37.59.248.168 -p 22022
elif [ "$choice" = "SUIVIPLUSPROD" ]; then
  ssh acousin_ro@192.168.213.10
elif [ "$choice" = "SUIVIPLUSPREPROD" ]; then
  ssh acousin_ro@192.168.113.10
elif [ "$choice" = "RELEVEPLUS" ]; then
  ssh acousin@37.59.248.164 -p 22022
fi;
