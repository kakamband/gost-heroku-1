wget -O gost.gz http://github.com/ginuerzh/gost/releases/download/v${VER}/gost-linux-amd64-${VER}.gz
gzip -d gost.gz
mv gost-linux-amd64 gost
chmod +x gost
./gost -L=tls://:${TLS_PORT}/:$PORT -L=ss+mws://$METHOD:$PASSWORD@:$PORT
