<h1>Network security</h1>

<h3>firewalld</h3>
A dynamic daemon to manage firewalls with support for network zones.
<pre>systemctl status firewalld</pre>

<h4>firewall-cmd</h4>
A front-end tool for managing the firewalld daemon, which interfaces with the Linux kernal's netfilter framework.

<br>
<h3>nftables</h3>
A framework that provides packet filtering, network address translation (NAT) and other packet mangling.
<pre>systemctl status nftables</pre>

<br>
<h1>Controlling SELinux Port Labeling</h1>

<h3>selinux-policy-doc</h3>
It's a package used to extend man pages so you can gather information in detail. 
<pre>[root@host ~]# sudo yum install -y selinux-policy-doc
[root@host ~]# man -k _selinux</pre>