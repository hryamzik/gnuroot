apt-get update
apt-get install dropbear
sed -Ei 's/^(DROPBEAR_PORT=22)$/\122/' /etc/default/dropbear
