# Controlling Access to Files

## Managing Default Permission and File Access
There are two things that affect default permissions and that if whether you are creating a regular file or a directoy and the second is current umask. 

umask is octal bitmask used to clear the permissions of new files and directories created by a process.

Umask can be changed like this 

<pre>
[user@host ~]$ umask 027
[user@host ~]$ touch two-seven.txt
[user@host ~]$ ls -l two-seven.txt
-rw-r-----. 1 user user 0 May 9 01:55 two-seven.txt
[user@host ~]$ mkdir two-seven
[user@host ~]$ ls -ld two-seven
drwxr-x---. 2 user user 0 May 9 01:54 two-seven
</pre>

As root, you can change this by adding a shell startup script named /etc/profile.d/local-
umask.sh that looks something like the output in this example:

<pre>
[root@host ~]# cat /etc/profile.d/local-umask.sh
# Overrides default umask configuration
if [ $UID -gt 199 ] && [ "`id -gn`" = "`id -un`" ]; then
umask 007
else
umask 022
fi
</pre>

If you simply just want to overrite for everyone you can add.
<pre>
# Overrides default umask configuration
umask 022
</pre>

## /etc/profile and profile.d explained
- /etc/profile sets the environment variables at startup of the bash shell
- /etc/profile.d directory contains other scripts that contain application-specific startup files, which are also executed at startup time by the shell.