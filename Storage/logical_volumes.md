<h1>Logical volumes</h1>

It's made to make disk management smarter. If a file system that hosts a logical volume needs more space, it can be allocated to it's logical volume from the free space in its volume group and file system can be resized.



<h3>LVM Definitions</h3>
<b>Physical devices</b><br>
The storage devices used to save data stored in a logical volume.

<br>
<b>Physical volumes (PVs)</b><br>
Physical volumes are the underlying "physical" storage used with LVM. 

<br>
<b>Volume groups (VGs)</b><br>
Volume groups are storage pools made up for one or more physical volumes.

<br>
<b>Logical volumes (LVs)</b><br>
Logical volumes are created from free physical extents in a volume group and provide the "storage" device used by applications, users, and the operating system.

<br>
<h3>Create a physical volume</h3>
<pre>pvcreate /dev/vdb2 /dev/vdb1</pre>

<br>
<h3>Create a volume group</h3>
<i>blocks should be physical volumes before joining the group</i>
<pre>vgcreate vg01 /dev/vdb2 /dev/vdb1</pre>

<br>
<h3>Create a logical volume</h3>
<pre>lvcreate -n lv01 -L 700M vg01</pre>

<br>
<h3>Add the file system</h3>
<pre>mkfs -t xfs /dev/vg01/lv01</pre>
Use mkdir to create mount point 
<pre>mkdir /mnt/data</pre>
add entry to the /etc/fstab
<pre>/dev/vg01/lv01 /mnt/data xfs defaults 1 2</pre>
Then we need to mount volume
<pre>mount /mnt/data</pre>


<br>
<h3>Remove the logical volume</h3>
<pre>lvremove /dev/vg01/lv01</pre>

<br>
<h3>Remove the volume group</h3>
<pre>vgremove vg01</pre>

<br>
<h3>Remove the physical volumes</h3>
<pre>pvremove /dev/vdb2 /dev/vdb1</pre>

<br>
<h3>Reviewing LVM Status Information</h3>
<pre>pvdisplay /dev/vdb1</pre>

<br>
<h3>Reviewing logical volumes</h3>
<pre>lvdisplay /dev/vg01/lv01</pre>

<br>
<h1>Extending Local Volumes</h1>
<br>
<h3>Extend the volume group</h3>
<pre>vgextend vg01 /dev/vdb3</pre>
<br>
<h3>Move the physical extends</h3>
<pre>pvmove /dev/vdb3</pre>

<br>
<h3>Reduce the volume group</h3>
<pre>vgreduce vg01 /dev/vdb3</pre>

<br>
<h3>Verify volume group has space available</h3>
<pre>vgdisplay vg01</pre>

<br>
<h3>Extend the logical volume</h3>
<pre>kvextend -L +300M /dev/vg01/lv01</pre>

<br>
<h3>Extend the file system</h3>
<pre>xfs_growfs /mnt/data</pre>
Verify the new size of the mounted filesystem
<pre>df -h /mountpoint</pre>

<br>
<h3>Extend the file system</h3>
<pre>resize2fs /dev/vg01/lv01</pre>
