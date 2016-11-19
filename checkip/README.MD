# Check IP bash-script
## Description
This bash script checks external dynamic IP address of your Raspberry Pi and
if it changes sends fresh IP at your email. Add this script to task manager
(Cron, for example) for automatic periodic checking.

## Описание
Этот bash-скрипт проверяет внешний динамический IP-адрес Raspberry Pi и при
его изменении высылает обновлённый адрес на вашу электронную почту. Добавьте
скрипт в планировщик задач (например, Cron) для автоматической периодической
проверки.

## You will need:
* installed **wget** utility
* installed and configured **mail** utility

## Thanks to:
* *CaptainKorhonen* for [original script](https://www.raspberrypi.org/forums/viewtopic.php?t=65010 "Email external IP address - Raspberry Pi")
* *Akamai* for [plain IP](http://whatismyip.akamai.com/) service
