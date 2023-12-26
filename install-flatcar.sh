curl -fsSLO --retry-delay 1 --retry 60 --retry-connrefused --retry-max-time 60 --connect-timeout 20 https://raw.githubusercontent.com/flatcar/init/flatcar-master/bin/flatcar-install
chmod +x flatcar-install

echo Please enter your SSH Public Key
read SECRET_SSH_PUBLICKEY
sed -i "s|SECRET_SSH_PUBLICKEY|$SECRET_SSH_PUBLICKEY|g" config.ignition.json

./flatcar-install -s -i config.ignition.json
shutdown -r +1
