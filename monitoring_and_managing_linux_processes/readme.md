# Monitoring and Managing Linux Processes
Services used
- top
- ps

## Processes
Stop process without terminating
<pre>
[root@serverb ~]# pkill -SIGSTOP process101
</pre>

Continue process
<pre>
[root@serverb ~]# pkill -SIGCONT process101
</pre>

Terminate process
<pre>
[root@serverb ~]# pkill process101
</pre>

## Top command

When in top..

- Memory mode:    Shift+m
- CPI usage:      Shift+p
- Toggle different memory view: "press m"
- Toggle different task/cpu view: "press t"

## ps command

View status on processes
<pre>
[root@serverb ~]# ps jT
</pre>
