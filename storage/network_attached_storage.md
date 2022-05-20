<h1>Network-Attached Storage</h1>

NFS the Network File System is an internet standard protocol used by Linux, Unix, and similar operating systems as their native network file system.

Follow these steps as the client

1. Identify 
<pre>
[user@host ~]$ sudo mkdir mountpoint
[user@host ~]$ sudo mount serverb:/ mountpoint
[user@host ~]$ sudo ls mountpoint</pre>

2. Mount
<pre>[user@host ~]$ sudo mount -t nfs -o rw,sync serverb:/share mountpoint</pre>

- mount persistently by adding confiuration to /etc/fstab
<pre>
[user@host ~]$ sudo vim /etc/fstab
...
Server:/path/to/export /local_mountpoint nfs <i>options</i> 0 0</pre>

Information about syntax and options can be found here 
https://linoxide.com/example-linux-nfs-mount-entry-in-fstab-etcfstab/ 

Then mount
<pre>[user@host ~]$ sudo mount /mountpoint</pre>

<h3>Unmounting NFS Shares</h3>
<pre>[user@host ~]$ sudo umount /mountpoint</pre>

<br>
<h1>Automounting Network-attached Storage</h1>
The automounter is a service (autofs) that automatically mounts NFS shares "on-demand", and will automatically unmount NFS shares when they are no longer being used.

<h3>Installation</h3>
<pre>sudo yum install autofs</pre>

<br>
<h3>1. Add a master map file</h3>
It's added to <i>/etc/auto.master.d</i>. This files identifies the base directory used for mount points and identifies the mapping file used for creating the automounts.
<pre>sudo vim /etc/auto.master.d/demo.autofs</pre>
<b>For content of file remember</b><br>
mountpoint ----> Indirect map file (mapping file)
<pre>/shares /etc/auto.demo</pre>

<h3>2. Create the mapping file</h3>
<pre>[user@host ~]$ sudo vim /etc/auto.demo</pre>

The mapping file-naming convention is /etc/auto.<i>name</i>, where <i>name</i> reflects the content of the map.
<pre>*	-rw,sync,fstype=nfs4	serverb.lab.example.com:/shares/&</pre>

<h3>3. Start and enable the automounter service</h3>
<pre>[user@host ~]$ sudo systemctl enable --now autofs</pre>


<h2>Indirect Worldcard Maps</h2>
When an NFS server exports multiple subdirectories whithin a directory, then the automounter can be configured to access any one of those subdirectories using a single mapping entry.
<br>
<pre>*  -rw,sync  serverb:/shares/&</pre>