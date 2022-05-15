<h1>SELinux</h1>

It's an additional layer of system security. The primary goal os to protect user data from system services that have been compromised. 

SELinux File Context:
image

<h3>SELinux mode file location</h3>
<pre>/etc/selinux/config</pre>

<h3>Determine the current SELinux mode</h3>
<pre>getenforce</pre>

<h3>To set SELinux to a different mode</h3>
<pre>[user@host ~]# setenforce
usage:  setenforce [ Enforcing | Permissive | 1 | 0 ]
[user@host ~]# setenforce Permissive
</pre>


<h3>See SELinux context</h3>
<pre>ls -Z</pre>

<h3>Change SELinux contexts with semanage and restorecon</h3>
<i>note: Changes dont take effect beofre after execution of restorecon</i>
<pre>[root@host ~]# semanage fcontext -a -t httpd_sys_content_t '/somedir(/.*)?'
[root@host ~]# restorecon -RFvv /somedir
[root@host ~]# ls -Zd /somedir/
drwxr-xr-x. root root system_u:object_r:httpd_sys_content_t:s0 /somedir/
</pre>

<br>
<h1>SELinux Policy bool management</h1>

Get SE Bools
<pre>getsebool -a</pre>

Get Specific bool
<pre>getsebool httpd_enable_homedirs</pre>

Change policy setting 
<pre>sudo setebool httpd_enable_homedirs on</pre>

The -P flag makes percist policy change persistent with reboot
<pre>[user@host ~]$ setsebool -P httpd_enable_homedirs on
[user@host ~]$ sudo semanage boolean -l | grep httpd_enable_homedirs
httpd_enable_homedirs          (on   ,   on)  Allow httpd to enable homedirs </pre>

<br>
<h1>SELinux trouble shooting</h1>
Look into the /var/log/message and look for "sealert"
<pre>tail /var/log/messages</pre>