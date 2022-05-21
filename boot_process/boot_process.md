<h1>Controlling the boot process</h1>

<h2>Systemd Target</h2>
A systemd target is a set of systemd units that the system should start to reach a desired state.

- graphical.target
- multi-user.target
- rescue.target
- emergency.target

A target can be part of another target and can be checked out with the following command.
<pre>systemctl list-dependencies graphical.target | grep target</pre>

To list all avaiable targets
<pre>systemctl list-units --type=target --all</pre>

Select a target at runtime
<pre>systemctl cat graphical.target</pre>

Setting a Default Target
<pre>[root@host ~]# systemctl get-default
multi-user.target
[root@host ~]# systemctl set-default graphical.target
Removed /etc/systemd/system/default.target.
Created symlink /etc/systemd/system/default.target -> /usr/lib/systemd/system/graphical.target.
[root@host ~]# systemctl get-default
graphical.target</pre>

Selecting a Different target at Boot Time
1. Boot or reboot the system
2. Interrupt the boot loader menu countdown by pressing any key.
3. Move ther cursor to the kernal entry that you want to start. 
4. Press e to edit the current entry.
5. Move the cursor to the line that starts with linus. This is the kernal command line
6. Append <i>systemd.unit=target</i> for example
<pre>systemd.unit=emergency.target</pre>

7. Press Ctrl+x to boot with these changes