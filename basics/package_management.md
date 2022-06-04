## Package management

# Subscription-manager

### Get subscription status of machine
```
subscription-manager status
```
### Register machine
```
subscription-manager register
```

### Specify repo usages
This disables all repos only enables repos of interest.
<pre>subscription-manager repos --disable='*' --enable='special_repo'</pre>

# RPM

List all packages
<pre>rpm -qa</pre>

List details about a given packages
<pre>rpm -qi java-1.8.0-openjdk-1.8.0.332.b09-1.fc36.x86_64</pre>


# Yum

It's the primary tool for getting, installing, deleting, querying, and managing Red Hat Enterprise Linux RPM software packages from official Red Hat software repositories, as well as other third-party repositories.

### List all or single packages
``` 
kristofermar@fedora:~$   yum list all

kristofermar@fedora:~$   yum list cronie
```

### Get info on package

```
yum info cronie
```

### Query a repo to see all files
<pre>repoquery -l cronie</pre>

### Check what packags provides you with a specific file
<pre>yum provides /etc/fstab</pre>

### Install package
<pre>yum install cronie</pre>

### Remove package
<pre>yum remove cronie</pre>

### View and install yum groups
<pre>yum list group

yum install group_name</pre>

### View history & history undo
<pre>yum history

yum history info 4

yum history undo 4</pre>

## Yum repositories

Location of local repos:
<pre>ls -l /etc/yum.repos.d/</pre>
The inside
- baseurl   : the base url to repo
- enabled   : enabled repo
- gpgcheck  : if true we need the gpg public key, the developer keeps the private key.
- name      : Friendly name
<pre>[google-chrome]
name=google-chrome
baseurl=https://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl.google.com/linux/linux_signing_key.pub
</pre>

View all available repositories
<pre>yum repolist all</pre>

Disable & Enable a reposity
<pre>yum-config-manager --disable rhel-8.0-for-x86_64-appstream-rpms

yum-config-manager --enable rhel-8.0-for-x86_64-appstream-rpms</pre>

Add repo
<pre>yum-config-manager --add-repo <i>repo_url</i></pre>
or
Create your file.repo under /etc/yum.repos.d/


## Yum modules
It's a set of RPM Packages that are a consistent set that belong together. Modules are versioned. 

List all modules
<pre>yum module list</pre>

List all installed modules
<pre>yum modules list --installed</pre>

Get module info
<pre>yum module info python36</pre>

Install modules 
<pre>yum install python36:3.6/common</pre>

Remove module
<pre>yum module remote postgresql</pre>

Reset module and it's streams
<pre>yum module reset postgresql</pre>

