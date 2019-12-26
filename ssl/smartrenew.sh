#!/bin/bash

# The remaining life on our certificate below which we should renew (7 days).
RENEW=7
# Set date for backup
TODAY=`date '+%Y_%m_%d'`
# If the certificate has less life remaining than we want.
if ! openssl x509 -checkend $[ 86400 * $RENEW ] -noout -in /home/acme/signed.crt
        then
                # Then make backup copy of existing cert before starting renew
                cp /home/acme/signed.crt /home/acme/signed_backup_$TODAY.crt
                # Then call the renewal script.
                ./home/pi/pi/ssl/renew.sh
fi