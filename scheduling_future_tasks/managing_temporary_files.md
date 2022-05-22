<h1>Managing Temporary Files</h1>

 Red Hat Enterprise Linux 7 and later include a new tool called <b>systemd-tmpfiles</b>, which provides a structured and configurable method to manage temporary directories and files. 

 This command reads configuration files from /usr/lib/tmpfiles.d/*.conf, /run/tmpfiles.d/*.conf, and /etc/tmpfiles.d/*.conf. Any files and directories marked for deletion in those configuration files is removed, and any files and directories marked for creation (or permission fixes) will be created with the correct permissions if necessary. 


The configuration
 <pre>[user@host ~]$ systemctl cat systemd-tmpfiles-clean.timer</pre>

After changes in this file run 
<pre>[root@host ~]# systemctl daemon-reload</pre>

And after reload then activate
<pre>[root@host ~]# systemctl enable --now systemd-tmpfiles-clean.timer</pre>

<h3>How to create and use a systemd-tmpfile</h3>

1. Create the file
<pre> vim /etc/tmpfiles.d/momentary.conf</pre>

2. Configure the file with some rule (this example is with delete)
<pre>d /run/momentary 0700 root root 30s</pre>

3. Create the file as part of systemd-tmpfiles
<pre>systemd-tmpfiles --create /etc/tmpfiles.d/momentary.conf</pre>

4. You can now run the following command anytime to execute rule
<pre>systemd-tmpfiles --clean /etc/tmpfiles.d/momentary.conf</pre>