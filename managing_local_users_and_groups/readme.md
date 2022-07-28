# Managing Local Users and Groups
Main services
- useradd
- usermod
- chage
- groupadd

</br>


## Groups

Create new group with GID 23000
<pre>
[kris@fedora ~]$ sudo groupadd -g 23000 consultants
</pre>

### Change accessrights for a group
Configure administrative rights for all members of consultants.
1. Navigate to "/etc/sudoers.d
2. Create a new file for the group "sudo vim /etc/sudoers.d/consultants"
3. Add the following go give full rights
<pre>
consultants ALL=(ALL)   ALL
</pre>
<br>


## Managing Local User Accounts

Check what groups user is part of 
<pre>
groups username
</pre>

Add user to group
<pre>
usermod -a -G examplegroup username
</pre>

Remove user from group
<pre>
sudo gpasswd --delete username examplegroup
</pre>
</br>

### Restricting Access

You can use the chage command to set account expiration dates. 

This locks a given acoount at a given time 

<pre>
[user01@host ~]$ sudo usermod -L -e 2019-10-05 user03
</pre>


## Manage login
The following file is important
<pre>
/etc/login.defs
</pre>

This file provides default configuration information for serveral user account paramaters. The useradd, usermod, userdel, and groupadd commands, and other user and group utilities take default values from this file.

<br>

### The nologin shell

The nologin shell acts as a replacement shell for the user accounts not intended to interactivly log into the system. 

If the user attempts to log in to the system directly, the nologin shell closes the connection
<pre>
[user01@host ~]$ usermod -s /sbin/nologin user03
[user01@host ~]$ su - user03
Last login: Wed Feb 6 17:03:06 IST 2019 on pts/0
This account is currently not available.
</pre>
