<h1>Linux users</h1>

<h2>The root user</h2>
It's the superhuse who has access to all files and commands on the given linux or unix based operating system.

<b>Login as root user</b>
<pre>sudo -i</pre>

<b>switch to the root user</b>
<i>Default settings block the root user</i>
<pre>sudo -s</pre>


<b>switch user</b>
<i>Most commonly used</i>
<pre>sudo su -</pre>
or
<pre>su - root</pre>
or
<pre>su -</pre>


<h2>Switch to another user</h2>
<pre>su - <i>user</i></pre>


<h2>Create a new user</h2>
<h3>adduser</h3>
adduser adds users to the system according to command line options and configuration information in /etc/adduser.conf. 

<b>example</b>
<pre>groupadd --system nexus -f -g 1001</pre>

<b>link</b>
https://www.commandlinux.com/man-page/man8/addgroup.8.html



<h2>Get all users</h2>
A simple command
<pre>less /etc/passwd</pre>