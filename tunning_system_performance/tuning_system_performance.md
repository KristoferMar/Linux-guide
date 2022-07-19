<h1>Tuning System Performance</h1>

<h3>tuned</h3>
A profile-based system tunning tool that uses the udev devide manager to monitor connected devices, and enables both static and dynamic uning of system settings.
<pre>[root@host ~]$ yum install tuned
[root@host ~]$ systemctl enable --now tuned</pre>

Identify the currently active tuning profile
<pre>tuned-adm active</pre>

List avaiable tuning profiles
<pre>tuned-adm list</pre>

<h3>Switch tuning profile</h3>
<pre>[root@host ~]$ tuned-adm profile throughput-performance
[root@host ~]$ tuned-adm active
Current active profile: throughput-performance</pre>

<h3>Get recommended profile</h3>
<pre>tuned-adm recommend</pre>

<h3>Revert profile changes</h3>
There are multiple ways to do this - one is to switch tuned-adm off/on
<pre>[root@host ~]$ tuned-adm off
[root@host ~]$ tuned-adm active
No current active profile.</pre>

### Notes
tuned persists the active profile automatically when it's changed. 

Files related to tuned can be found in <b>/etc/tuned<b>


<br>
<h2>Managing Profiles with Web Console</h2>
It's also possible to manage Profiles though the web console

1. Login
2. Navigate to "System"
3. Change Performance Profile