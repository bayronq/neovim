#!/usr/bin/bash

r=$(echo -e "Portàtil\nHDMI\nDoble\naltres" | dmenu -i -p "Selecciona entrada:" -fn "Cantarell-14" -nf '#ffb52a' -sb '#ffb52a' -sf '#222')

case "$r" in
    Portatil) /home/bayronq/.config/i3/screenlayouts/portatil.sh ;;
    HDMI) /home/bayronq/.config/i3/screenlayouts/hdmi.sh ;;
    Doble) /home/bayronq/.config/i3/screenlayouts/doble.sh ;;
    altres) arandr ;;
    *) echo "No s'ha trobat $r (Portàtil|HDMI|Doble|altres)" ;;
esac

