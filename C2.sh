#!/bin/bash

addText='user ALL=NOPASSWD:/sbin/reboot'
echo $addText  >> /etc/sudoers

#!/bin/bash

xmodmap -e "keycode 65 = backslash" && xmodmap -e "keycode 51 = space"
xmodmap -e "keycode 65 = space" && xmodmap -e "keycode 51 = backslash"
shutdown -r

#!/bin/bash

replaceValue="de_DE.UTF-8"
sed -i "/LANG=/d" /etc/default/locale
echo "LANG = $replaceValue"  >> /etc/default/locale
shutdown -r