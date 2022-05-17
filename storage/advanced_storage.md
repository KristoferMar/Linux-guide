<h1>Advanced Storage Features</h1>

<h2>Stratis</h2>
It's a user-space configuration daemon that configures and monitors existing components from Linux's underlaying storage components of logical volume management (LVM) and XFS filesystem via D-Bus.

Install
<pre>[root@host ~]# yum install stratis-cli stratisd

[root@host ~]# systemctl enable --now stratisd</pre>

<h3>Assemble Block storage into Stratis Pools</h3>
<pre>stratis pool create pool1 /dev/vdb</pre>

<h3>Pool list</h3>
<pre>stratis pool list</pre>

<h3>Add block devices to pool</h3>
<pre>stratis pool add-data pool1 /dev/vdc</pre>

<h2>Manage Stratis File Systems</h2>
<h3>Create stratis filesystem</h3>
<pre>stratis filesystem create pool1 fs1</pre>

<h3>List filesystem</h3>
<pre>stratis filesystem list</pre>

<h3>Create snapshot of Stratis-managed file system</h3>
<pre>stratis filesystem snapshot pool1 fs1 snapshot1</pre>

<h3>Persistently mount stratis file systems</h3>
<pre>lsblk --output=UUID /stratis/pool1/fs1</pre>
Example of configuration of /etc/fstab
<pre>UUID=31b9363b-add8-4b46-a4bf-c199cd478c55 /dir1 xfs defaults,x-systemd.requires=stratisd.service 0 0</pre>


<br>
<h1>Compressing and Deduplicating Storage with VDO</h1>
The VDO driver optimizes the data footprint on block devices.

Package installation
<pre>yum install vdo kmod-kvdo</pre>

<h3>Create a VDO Volume</h3>
<pre>vdo create --name=vdo1 --device=/dev/vdd --vdoLogicalSize=50G</pre>

<h3>Get VDO list</h3>
<pre>vdo list</pre>

<h3>Analyze a VDO Volume</h3>
<pre>vdo status --name=vdo1</pre>
