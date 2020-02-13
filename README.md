# Terminal-guide

This is a guide with notes to how to execute different kinds of commands. 

To execute admin commands we make use of the <i>sudo</i> command.

### Ports

List all open ports <br>
<i> lsof -nPi | grep LISTEN </i>

Kill port <br>
<i> kill -9 <-PID number-> </i>


### files

<b>Check current directory path<br> </b>
<i>pwd</i>

Create folder <br>
<i>mkdir</i>

Compleatly remove file by force <br>
<i> rm -rf "filename" </i>

<b>Execute shell scripts <br></b>
<i>sh 'Drag and drop shell script file' </i>

## Java

Java is configurable on mac. 

Below we find how we can change our java version on mac. <br>
https://stackoverflow.com/questions/26252591/mac-os-x-and-multiple-java-versions

# Good to know
- On both mac and windows there is something called the "host file". This file enables us to access websites which are not necesarly on a server and open for the public network yet. To get to the file type 'sudo nano /etc/hosts' and then hit return.
