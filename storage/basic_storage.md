<h1>Basic Storage</h1>

The following packages help us with storage management
- Parted
- gdisk
- fdisk

Following installs all fdisk
<pre>yum install util-linux</pre> 

fstab holds configuration about mounting and unmounting of file systems.
<pre>vim /etc/fstab</pre>

<h3>List all available block devices</h3>
<pre>lsblk</pre>

<h3>Get partition table on block</h3>
<pre>parted /dev/vda print</pre>
If the given block displays <i>Partition Table: unknown</i> you can define the partition scheme to eg GPT with the mklabel command.
<pre>parted /dev/vdb mklabel gpt</pre>

<h3>Create a new primary or extended partition</h3>
<pre>
[root@servera ~]# parted /dev/vdb
GNU Parted 3.2
Using /dev/vdb
Welcome to GNU Parted! Type 'help' to view a list of commands.
(parted) <b>mkpart</b></pre>

Wait system to detect a new partition and create associated device
<pre>udevadm settle</pre>

Format partition for your type of filesystem (example for XFS)
<pre>mkfs.xfs /dev/vdb1</pre>

Update systemd for the system to register fstab configuration
<pre>systemctl daemon-reload</pre>

<br>
<h2>Mounting and unmounting</h2>

See disk mounting
<pre>lsblk</pre>

Mount to folder
<i>Given that /etc/fstab is configured correctly with the upcomming mount</i>
<pre>mount /somefolder</pre>

Unmount folder from block
<pre>umount /somefolder</pre>


<br>
<h1>Swap space</h1>
The primary function of swap space is to substitute disk space for RAM memory when real RAM fills up and more space is needed. 

Initialize newly created partition as swap space
<pre>[root@servera ~]# mkswap /dev/vdb2mkswap /dev/vdb2</pre>

Get Swaps
<pre>swapon --show</pre>

Enable newly created swap space
<pre>swapon /dev/vdb2</pre>

Disable swap space
<pre>swapoff /dev/vdb2</pre>

To make sure it persist a reboot - Add swap to /etc/fsconfig
<pre>...
UUID="6116brr8-af3f-3462-345g-234f4531r45g5g4" swap swap defaults 0 0
...</pre>