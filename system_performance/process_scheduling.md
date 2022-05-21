<h1>Influence Process Scheduling</h1>

The operating system process scheduler rapidly switches between processes on a single core, giving the impression that there are multiple processes running at the same time.

Processes operate with a "nice level" configured to determine what process has the higher priortity. The higher nicelevel the lower priority.

<h3>Process list based on Nice lvl</h3>
<pre>ps axo pid,comm,nice,cls --sort=-nice</pre>

<h3>Start process with different Nice Levels</h3>
<pre>sha1sum /dev/zero &
[1] 3480
[user@host ~]$ ps -o pid,comm,nice 3480
  PID COMMAND          NI
 3480 sha1sum           0</pre>

The nice command can be used by all users to start commands with a default or higher nice level. Without options, the nice command starts a process with the default nice value of 10.
<pre>[user@host ~]$ nice sha1sum /dev/zero &
[1] 3517
[user@host ~]$ ps -o pid,comm,nice 3517
  PID COMMAND          NI
 3517 sha1sum          10</pre>

 -n can be used to apply user-defined nicelevel.
 <pre>[user@host ~]$ nice -n 15 sha1sum &
[1] 3521
[user@host ~]$ ps -o pid,comm,nice 3521
  PID COMMAND          NI
 3521 sha1sum          15</pre>


 <br>
 <h3>Chaning the Nice Level of an Existing Process</h3>
 <pre>[user@host ~]$ renice -n 19 3521
3521 (process ID) old priority 15, new priority 19</pre>