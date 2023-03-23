# Username Changer cPanel Plugin
 
![Screenshot](/assets/img/cpanel username change.png)
 
 
Uses WHMAPI to change the username for the user, but because cpanel users dont have access to it, script runs c wrapper that executes the bash script as root.

Please properly test it and add additional security checks before using in production.

```
chmod +x script.sh
chmod u+s wrapper
```
