# Overview
Displays a dashboard of various coins using coinmarketcap.com API

# Hardware
* Used RPi3 with this screen: https://www.amazon.com/gp/product/B0153R2A9I/ref=ox_sc_act_title_1?smid=A30ZYR2W3VAJ0A&psc=1
* Also used this case: http://www.amazon.com/dp/B01HFMZS48

## Update config files
In a kernel update, the Pi flipped it's screen so you need to edit /boot/config.txt to add:

    lcd_rotate=2

After the next reboot, the screen starts upside down and then once that command is processed will flip.

## Scripts
To turn on or off the screen, I created two scripts called backlightOn.sh and backlightOff.sh. Each script just has a single line:

    echo 0 > /sys/class/backlight/rpi_backlight/bl_power
    echo 1 > /sys/class/backlight/rpi_backlight/bl_power

# Software
Installed lighttpd. Remember to run the following after attaching the screen:

    sudo apt-get update
    sudo apte-get upgrade

 I also installed a couple of on-screen keyboards but they aren't that good:

    apt-get install florence
    apt-get install matchbox-keyboard