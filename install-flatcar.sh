curl -fsSLO --retry-delay 1 --retry 60 --retry-connrefused --retry-max-time 60 --connect-timeout 20 https://raw.githubusercontent.com/flatcar/init/flatcar-master/bin/flatcar-install
chmod +x flatcar-install

if [ -z "$SECRET_SSH_PUBLICKEY" ]; then
  read -p "Please enter your SSH Public Key: " SECRET_SSH_PUBLICKEY
fi

sed -i "s|SECRET_SSH_PUBLICKEY|$SECRET_SSH_PUBLICKEY|g" config.ignition.json

./flatcar-install -s -i config.ignition.json
echo "Installation completed. Reboot system to finalize."
