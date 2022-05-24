<h1>Reset the Root Password</h1>

<h2>Access the root shell</h2>

1. Reboot the system
2. Interrupt the boot loader countdown by pressing any key, except Enter
3. Move the cursor to the kernel entry to boot.
4. press e to edit the selected entry.
5. Move the cursor to the kernel command line (the line that starts with linux)
6. Append <i>rd.break</i> With that option, the system breaks just before the system hands control to the initramfs to the actual system.
7. Press <i> Ctrl+x</i> to boot with the changes.

To reset the root password from this point use the following procedure. 

1. Remount /sysroot as read/write.
<pre>switch_root:/# mount -o remount,rw /sysroot</pre>

<i>note: /sysroot is a scaled down version of your target's filesystem.</i>

2. Switch into a chroot jail, where /sysroot is treated as the root of the file-system tree.

<pre>switch_root:/# chroot /sysroot </pre>

3. Set a new root password.

<pre>sh-4.4# passwd root</pre>

4. Make sure that all unlabeled files, including /etc/shadow at this point, get relabeled during boot.

<pre>sh-4.4# touch /.autorelabel</pre>

Type exit twice. The first command exits the chroot jail, and the second command exits the initramfs debug shell. 

<br>
<h1>Approach 2</h1>

1. Reboot machine and press "e" to access edit boot process
2. in the "linux line" add the following in the end.
<pre>systemd.debug-shell</pre>

3. press ctrl + x
4. reboot
5. send keys "Ctrl + alt + f9" to access shell terminal.
6. change the password direclt with 
<pre>passwd</pre>

And as soon as you are through, remember to run
<pre>systemctl stop debug-shell.service</pre>