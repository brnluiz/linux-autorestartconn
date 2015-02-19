Restart Connection: Projected for BeagleBone
=============================================

Some Linux kernel for BeagleBone don't support ethernet hot-pluging (v3.8.13, for example), so I found this script which detects if the cable is reconnected and then restart the networking service. With that, the ethernet interface works again.

You can modify it and remake the deb package. For that, modify the files on scripts folder. The file "restartconn" do the real job of checking the connection and restarting when is needed. The file "restartconn-boot" is used for start the script on boot. After modified, just run make_deb.sh
