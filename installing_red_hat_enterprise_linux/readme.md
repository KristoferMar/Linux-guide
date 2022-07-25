# Installing Red Hat Enterprise Linux

## Modifications on running machine

Install NTP 
<pre>
[root@CentOS ~]# yum install -y ntp
</pre>

#### Make server NTP client
- Modify /etc/ntp.conf 
- Comment out all pools and Ubuntu's ntp server
- Add an NTP server like this
<pre>
server utility.lab.example.com
</pre>

Check ntp 
<pre>
[root@CentOS ~]# ntpq
</pre>

## Kickstart File Commands



### Location and Secutiry Commands
- timezone: Defines the timezone, NTP servers, and whether the hardware clock uses UTC
<pre>
timezone --utc --ntpservers=time.example.com Europe/Amsterdam
</pre>