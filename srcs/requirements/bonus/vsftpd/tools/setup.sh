useradd -m "$FTP_USER"
chown $FTP_USER:$FTP_USER /home/$FTP_USER/data
echo "$FTP_USER:$FTP_PASS" | chpasswd
echo $FTP_USER > /etc/vsftpd.userlist

exec systemctl start vsftpd