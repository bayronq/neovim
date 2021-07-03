#!/usr/bin/bash
<<'EOF'
l=()
for x in "/home/bayronq/.config/i3"/*; do
    if [[ $x =~ .*\.jpg$ ]] ; then
        l+=("$x")
    fi;
done;

if [[ "${#l[@]}" == "0" ]] ; then
    exit
fi

wall="${l[RANDOM%${#l[@]}]}"

feh --bg-fill "$wall"
EOF

<<<<<<< HEAD:i3/wallpaper.sh
feh --bg-fill --randomize /home/bayronq/.config/i3/wall/*.jpg
=======
feh --bg-fill --randomize ~/wall/*.jpg
>>>>>>> d497ce89d77c4e3223fd833a9ec0ba4faa19e03d:.config/i3/wallpaper.sh
