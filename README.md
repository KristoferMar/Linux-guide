<h2>Terminal-guide</h2> <br>

This is a guide with notes to how to execute different kinds of commands. <br>
To execute admin commands we make use of the <i>sudo</i> command. <br><br>

<h3>Key commands</h3> <br>

Ctrl + W : delete just a word. <br>
Ctrl + U : clear up to the beginning. <br>
Ctrl + C : To Cancle (also in middle line) <br>

<h3>Ports</h3> <br>

List all open ports <br>
<i> lsof -nPi | grep LISTEN </i>

Kill port <br>
<i> kill -9 'PID Number'> </i>


<h3>files</h3> <br>

<b>Check current directory path<br> </b>
<i>pwd</i>

Create folder <br>
<i>mkdir</i>

View file without change <br>
<b><i>less</i></b>

View file for changes (live) <br>
<b><i>tail -f </i></b>

Compleatly remove file by force <br>
<i> rm -rf "filename" </i>

<b>Execute shell scripts <br></b>
<i>sh 'Drag and drop shell script file' </i>

Open file in current directory <br>
VSCode: <b><i>code .</i></b> <br>
Intelij: <b><i>idea .</i></b>

Access/Edit mac host file <br>
<b><i>sudo nano /private/etc/hosts</i></b>

<h2>Directories</h2> <br>

Directory commands can be found in the following file: <br>
https://github.com/KristoferMar/Terminal-guide/blob/master/Directories/Commands.sh


<h2>Terminal Configuration</h2> <br>

Create Alias and Export's<br>
1. Create your alias or export by accessing bash_profile<br>
<b><i>nano ~/.bash_profile</i></b> <br>
2. Refresh the shell environment <br>
<b><i>source ~/.bash_profile</i></b>

<h2>Java</h2> <br>

Java is configurable on mac. <br>

Below we find how we can change our java version on mac. <br>
https://stackoverflow.com/questions/26252591/mac-os-x-and-multiple-java-versions <br>

Change default java version manually in terminal <br>
https://stackoverflow.com/questions/21964709/how-to-set-or-change-the-default-java-jdk-version-on-os-x

# Good to know  <br>
- On both mac and windows there is something called the "host file". This file enables us to access websites which are not necesarly on a server and open for the public network yet. To get to the file type 'sudo nano /etc/hosts' and then hit return.
