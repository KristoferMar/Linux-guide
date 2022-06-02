# Package management

## Subscription-manager

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



## Yum

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