The plus sign in the end of the permission list means the file extends the ACL structure.
<pre>
[user@host content]$ ls -l reports.txt
-rwxrw----+ 1 user operators 130 Mar 19 23:56 reports.txt
</pre>


<h2>getfacl</h2>
Read ACL information
<pre>
[user@host content]$ getfacl reports.txt
# file: reports.txt
# owner: user
# group: operators
user::rwx
user:consultant3:---
user:1005:rwx       #effective:rw-
group::rwx          #effective:rw-
group:consultant1:r--
group:2210:rwx      #effective:rw-
mask::rw-
other::---
</pre>

<h2>setfacl</h2>
Recursivly modify a user named 'contractor3' to have read/execute on the dir and it's content. 
<pre>
setfacl -Rm u:contractor3:rX /shares/cases
</pre>

Recursivly modify a group named 'contractors' to have read/write/execute on the dir and it's content. 
<pre>
setfacl -Rm g:contractors:rwX /shares/cases
</pre>

Set default values for user
<pre>
setfacl -m d:u:contractor3:rx /shares/cases
</pre>

Set default values for group
<pre>
setfacl -m d:g:contractors:rwx /shares/cases
</pre>
