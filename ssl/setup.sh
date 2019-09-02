#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "0 22 * * * /home/pi/ssl/smartrenew.sh 2>> /var/log/acme_tiny.log" >> mycron
#install new cron file
crontab mycron
rm mycron

#create log directories
sudo touch /var/log/acme_tiny.log
sudo chown acme:acme /var/log/acme_tiny.log

#make renew files executable
chmod +x ~/pi/ssl/renew.sh ~/pi/ssl/smartrenew.sh