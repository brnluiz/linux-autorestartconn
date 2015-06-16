# Auto Restart Linux Eth Script

Some Linux kernels for BeagleBone does not support ethernet hot-plugging (v3.8.13, for example), so I found this script which detects if the cable is reconnected and then restart the networking service. With that, the ethernet interface eth0 come back to life.

You can modify the script to use other ethernet interfaces and then remake the deb package. For that, you have to modify the files on scripts folder. The file ```restartconn``` do the job of checking the connection and restarting when is needed. The file ```restartconn-boot``` is used for start the script on boot. After you made your changes, just run ```make_deb.sh```

- To install the package, run:
```sudo dpkg -i restartconn_1.0-1.deb```
- To uninstall the package, run: ```sudo dpkg -r restartconn```