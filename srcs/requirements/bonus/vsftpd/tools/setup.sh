useradd -m "$FTP_USER"
chown $FTP_USER:$FTP_USER /home/$FTP_USER
# chmod 755 /home/$FTP_USER
echo "$FTP_USER:$FTP_PASS" | chpasswd
# echo "local_root=/home/$FTP_USER" >> /etc/vsftpd.conf
echo $FTP_USER > /etc/vsftpd.userlist

exec systemctl start vsftpd