crontab entries in EC2 instance
59 23 * * 6 shutdown_ec2.sh >> /tmp/shutdownec2/log
00 06 * * 1 start_ec2.sh >> /tmp/startec2/log

--------------------------------------------------------------------------------------------


start_ec2.sh
#!/bin/bash
##for start instance#
aws ec2 start-instances --instance-ids i-1a1234

-------------------------------------------------------------------------------------------
shutdown_ec2.sh
#!/bin/bash
##for stop instance#
aws ec2 stop-instances --instance-ids i-1a1234
-------------------------------------------------------------------------------------------


This can also be acheived by Lambda triggered to scheduled cloud watch alarms via python script