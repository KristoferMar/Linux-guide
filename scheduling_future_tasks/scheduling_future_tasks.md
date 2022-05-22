<h1>Scheduling Future Tasks</h1>

<h3>Insepct and Managing Deffered User Jobs</h3>
<pre>[user@host ~]$ atq
128 Mon Feb  2 05:13:00 2015 a user
29  Mon Feb  3 16:00:00 2014 h user
27  Tue Feb  4 12:00:00 2014 a user</pre>

<h3>Example: Fast creation of Scheduled job</h3>
<pre>[user@host ~]$ echo "date >> /home/student/myjob.txt" | at now +3min
job 1 at Thu Mar 21 12:30:00 2019</pre>
<pre>[student@servera ~]$ atq
1 Thu Mar 21 12:30:00 2019 a student</pre>

<h3>Live watch the queue</h3>
<pre>watch atq</pre>

<br>
<h1>Scheduling Recurring User Jobs</h1>

Normal users can use the crontab command to manage their jobs.

<b>crontab -l</b>
Lists the jobs for the current user

<b>crontab -r</b>
Remove all jobs for the current user

<b>crontab -e</b>
Edit jobs for the current user

<b>crontab <i>filename</i></b>
Remove all jobs, and replace with the jobs read from filename. If no file is specified, stdin is used.

The crontab syntax is as following
- Minutes
- Hours
- Day of month
- Month
- Day of week
- Command 

Example
<pre>15 12 15 * Fri command</pre>
or
<pre>0 9 2 2 * /usr/local/bin/yearly_backup</pre>
or
<pre>0 9 * * 1-5 mutt -s "Checking in" boss@example.com % Hi there boss, just checking in.</pre>