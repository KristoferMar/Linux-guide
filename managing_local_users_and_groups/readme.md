# Managing Local Users and Groups

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

### Restricting Access

You can use the chage command to set account expiration dates. 

This locks a given acoount at a given time 

<pre>
[user01@host ~]$ sudo usermod -L -e 2019-10-05 user03
</pre>

#### The nologin shell

The nologin shell acts as a replacement shell for the user accounts not intended to interactivly log into the system. 

If the user attempts to log in to the system directly, the nologin shell closes the connection
<pre>
[user01@host ~]$ usermod -s /sbin/nologin user03
[user01@host ~]$ su - user03
Last login: Wed Feb 6 17:03:06 IST 2019 on pts/0
This account is currently not available.
</pre>
