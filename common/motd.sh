#!/bin/sh -eux

motd="
 ___ _ _            ___           _      
|_ _| | | _____ _ _|_ _|___ _ __ (_)_ __ 
 | || | |/ / _ \ '__| |/ __| '_ \| | '__|
 | || |   <  __/ |  | |\__ \ |_) | | |   
|___|_|_|\_\___|_| |___|___/ .__/|_|_|   
                           |_|         

This system is built by the Ilker Ispir
More information can be found at https://github.com/ilkerispir"

if [ -d /etc/update-motd.d ]; then
    MOTD_CONFIG='/etc/update-motd.d/99-ilkerispir'

    cat >> "$MOTD_CONFIG" <<motd
#!/bin/sh

cat <<'EOF'
$motd
EOF
motd
    chmod 0755 "$MOTD_CONFIG"
else
    echo "$motd" >> /etc/motd
fi
