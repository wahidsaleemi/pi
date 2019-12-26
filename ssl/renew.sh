#!/bin/bash

python /home/acme/acme_tiny.py --account-key /home/acme/account.key --csr /home/acme/ws.csr --acme-dir /home/acme/challenges > /home/acme/signed.crt || exit
cat /home/acme/wahidsaleemi-nc.key /home/acme/signed.crt > /home/acme/combined.pem
sudo service lighttpd reload