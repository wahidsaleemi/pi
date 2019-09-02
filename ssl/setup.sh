#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "0 22 * * * /home/pi/ssl/smartrenew.sh" >> mycron
echo "0 0 1 * * /home/pi/ssl/renew.sh 2>> /var/log/acme_tiny.log" >> mycron
#install new cron file
crontab mycron
rm mycron

#create log directories
sudo touch /var/log/acme_tiny.log
sudo chown acme:acme /var/log/acme_tiny.log

#make renew files executable
chmod +x renew.sh smartrenew.sh