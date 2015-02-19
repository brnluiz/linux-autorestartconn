#!/bin/bash

cp scripts/restartconn-boot restartconn_1.0-1/etc/init.d
cp scripts/restartconn restartconn_1.0-1/usr/bin
rm restartconn_1.0-1.deb
dpkg-deb --build restartconn_1.0-1
