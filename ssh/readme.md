# Secure Shell

### Generate an SSH key pair
- "-t" specifies the type
- When command is entered you can specify name of key as part of the native steps.
<pre>
    ssh-keygen -t rsa
</pre>



### Install ssh key on remote server
- user is the username of who will ssh 
- 77.134.54.101 is the ip address of the remote server
- -p is port number of the server
<pre>
    ssh-copy-id -i ~/.ssh/id_rsa.pub user@77.134.54.101 -p 6576
</pre>