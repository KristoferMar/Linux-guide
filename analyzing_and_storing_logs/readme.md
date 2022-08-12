# Analyzing and Storing Logs

### Services used
timedatectl, date, journalctl, rsyslog

## Syslog Files
Isolate one kind of errorlog
1. Create the file "/etc/rsyslog.d/auth-errors.conf
2. Specify the kind of log in the conf file. 
<pre>
authpriv.alert  /var/log/auth-errors
</pre>
3. Restart rsyslog for it to pickup the new conf file.
<pre>
[kristofer@serverb ~]$ sudo systemctl restart rsyslog
</pre>
4. Test it with logger
<pre>
[kristofer@serverb ~]$ logger -p authpriv.alert "Logging test authpriv.alert"
</pre>


## Reviewing System Jounral Entires

### Preserving the System Journal

Get journal output last 30 minutes (time is found using date and date d -d "-30 minutes")
<pre>
[kristofer@serverb ~]$ journalctl --since 08:00:00 --until 08:30:00
</pre>


## Maintaining Accurate Time

See available timezones
<pre>
[kristofer@serverb ~]$ timedatectl list-timezones | grep Jamaica
</pre>

Set the timezone 
<pre>
[kristofer@serverb ~]$ sudo timedatectl set-timezone America/Jamaica
</pre>

Check and see timezone 
<pre>
[kristofer@serverb ~]$ timedatectl
</pre>

### Date & Time
Get current date
<pre>
[kristofer@serverb ~]$ date
</pre>

Get get date & time 30 minuttes ago
<pre>
[kristofer@serverb ~]$ date -d "-30 minutes"
</pre>