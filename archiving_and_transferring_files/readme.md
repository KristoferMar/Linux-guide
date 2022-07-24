# Archiving and Transferring Files

## Managing compressed tar Archives
With tar, users can gather larger sets of files into a single file called an archive.

Selected tar options

Tar operators <br>
- -c  Create a new archive
- -x  Extract from an existing archive
- -t  List the table of contents of an archive

General Options <br>
- -v    Verbose. Shows which files get archived or extracted.
- -f    File name. This option must be followed by the file name of the archive to use or create
- -p    Preserve the permissions of files and directories when extracting an archive, without substracting the umask.

Tar Compression Options <br>
- -z    Use gzip compression (.tar.gz)
- -j    Use bzip2 compression (.tar.bz2). bzip2 typically achives a better compression ratio than gzip
- -J    Use xz compression (.tar.xz). The xz compression typically achives a better compression ratio than bzip2.

Example of compressing three files 
<pre>
[user@host ~]$ tar -cf archive.tar file1 file2 file3
[user@host ~]$ ls archive.tar
archive.tar
</pre>

Example of listing content of tar
<pre>
[root@host etcbackup]# tar -tf /root/etc.tar
etc/
etc/fstab
etc/crypttab
etc/mtab
...output omitted...
</pre>

Exaple of extracting tar while preserving the permissions of the extracted files in current location
<pre>
[root@host scripts]# tar -xpf /root/myscripts.tar
</pre>