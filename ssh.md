<h1>SSH</h1>
The SSH protocol enables systems to communicate in an encrypted and secure fashion over an insecure network.

<br>
<h3>OpenSSH</h3>
It's a systemd service which can be looked at with
<pre>systemctl status sshd</pre> 

<br>
<h3>Access remote host using ssh</h3>
<pre>
ssh user02@remotehost
</pre>

<br>
<h3>Generating SSH Keys</h3><br>
<pre>ssh-keygen</pre>
Keygen using a passphrase <br>
Means you use passphrase rather than your password on the remote host to authenticate.
<pre>ssh-keygen -f .ssh/key2</pre>

<br>
<h3>Copy SSH key to remote host</h3>
<pre>ssh-copy-id user02@remotehost</pre>
Copy SSH key with passphrace 
<pre>ssh-copy-id -i .ssh/key2.pub user2@remotehost</pre>

<br>
<h3>Login with passphrase without typing passphrase</h3>
Run
<pre>eval $(ssh-agent)</pre>
Then run
<pre>ssh-add .ssh/key2</pre>
The preceding eval command started ssh-agent and configured this shell session to use it. Then ssh-add provided the unlocked private key to ssh-agent.

Now
<pre>ssh -i .ssh/key2 user02@remotehost</pre>


<br>
<h2>Additional information</h2>
<br>
<b>known_hosts</b><br>
File containing public ssh key on authorized users.

<br>
<b>ssh configuration file</b>
<pre>/etc/ssh/sshd_config</pre>
This file can control various things such as controlling root ssh or enable/disable users from using password to ssh to server. <br>
<i>PermitRootLogin yes/no</i><br>
<i> PasswordAuthentication yes/no </i>

<br>
REMEMBER
<pre>systemctl reload sshd</pre><br>