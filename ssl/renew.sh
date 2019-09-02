#!/bin/bash

python /home/acme/acme_tiny.py --account-key /home/acme/account.key --csr /home/acme/ws.csr --acme-dir /home/acme/challenges > /home/acme/signed.crt || exit
cat /home/pi/certs/wahidsaleemi-nc.key signed.crt > combined.pem
sudo service lighttpd reload