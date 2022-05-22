<h1>Scheduling Recurring System Jobs</h1>


The /etc/crontab file has a usefull syntax diagram that looks like the following.
<pre>
 # For details see man 4 crontabs

# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue ...
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed
</pre>

The crontab system also includes repositories for scripts that need to run every hour, day, week, and month. These repositories are directories called 
- /etc/cron.hourly/
- /etc/cron.daily/ 
- /etc/cron.weekly/
- /etc/cron.monthly/

Again, these directories contain executable shell scripts, not crontab files. 