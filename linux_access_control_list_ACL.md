The plus sign in the end of the permission list means the file extends the ACL structure.
<pre>
[user@host content]$ ls -l reports.txt
-rwxrw----+ 1 user operators 130 Mar 19 23:56 reports.txt
</pre>


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