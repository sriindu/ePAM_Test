#!/bin/bash
yum install httpd -y
chkconfig http on
echo "this is a test page" >> /var/www/html/index.html