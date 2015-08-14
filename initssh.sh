apt-get update
apt-get install dropbear
sed -Ei 's/^(DROPBEAR_PORT=22)$/\122/' /etc/default/dropbear
sed -Ei 's/^(NO_START=)(1)/\10/' /etc/default/dropbear
grep -q PermitRootLogin /etc/default/dropbear || echo "PermitRootLogin yes" >> /etc/default/dropbear
/etc/init.d/dropbear start
