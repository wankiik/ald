#!/bin/bash

rm -f web config.json
wget -N https://raw.githubusercontent.com/wankiik/ald/main/web
chmod +x ./web

if [[ -z $id ]]; then
    id="b217345e-7a5b-4e35-8eea-f16eec4a518a"
fi

cat <<EOF > ~/config.json
{
    "log": {
        "loglevel": "warning"
    },
    "inbounds": [
        {
            "port": $PORT,
            "protocol": "vless",
            "settings": {
                "clients": [
                    {
                        "id": "$id"
                    }
                ],
                "decryption": "none"
            },
            "streamSettings": {
                "network": "ws",
                "security": "none"
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}
EOF

./web -config=config.json
