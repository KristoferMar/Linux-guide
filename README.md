<h2 class="subsubTitleSection" id="Terminal Guide">Terminal Guide</h2>
This is a guide with notes to how to execute different kinds of commands. <br>
To execute admin commands we make use of the <i>sudo</i> command. <br><br>

<h3 class="subsubTitleSection">Key commands</h3>
Ctrl + W : delete just a word. <br>
Ctrl + U : clear up to the beginning. <br>
Ctrl + C : To Cancle (also in middle line) <br>


<br>
<h3 class="subsubTitleSection">Ports</h3>
List all open ports <br>
<i> lsof -nPi | grep LISTEN </i>

Kill port <br>
<i><b> kill -9 'PID Number'</b></i><br>


<br>
<h3 class="subsubTitleSection">Files</h3>
Check current directory path <br> 
<i><b>pwd</b></i> <br>

Change owner of file or directory <br>
<i><b>chown newowner filename</b></i> <br>

View file without change <br>
<b><i>less</i></b>
Detailed information: <br>
<a href="https://github.com/KristoferMar/Terminal-guide/blob/master/Files/Less.md" target="_blank">https://github.com/KristoferMar/Terminal-guide/blob/master/Files/Less.md</a><br>

View file for changes (live) <br>
<b><i>tail -f </i></b><br>

Copy file from one place to another <br>
-If you are copying a directory you add '-r' after cp for recursive. <br>
<b><i>cp 'filename/dir' 'Destination' </i></b><br>

Compleatly remove file by force <br>
<i><b> rm -rf "filename"</b> </i> <br>

<b>Execute shell scripts <br></b>
<i>sh 'Drag and drop shell script file' </i><br>

Open file in current directory <br>
VSCode: <b><i>code .</i></b> <br>
Intelij: <b><i>idea .</i></b>

Access/Edit mac host file <br>
<b><i>sudo nano /private/etc/hosts</i></b><br>

<br>
<b>Find</b><br>
Find a file called testfile.txt in current and sub-directories. <br>
<b><i>find . -name "testfile.txt"	</i></b> <br>
Detailed information: <br>
<a href="https://github.com/KristoferMar/Terminal-guide/blob/master/Files/find.sh" target="_blank">https://github.com/KristoferMar/Terminal-guide/blob/master/Files/find.sh
</a><br>

<br>
<h2>Directories</h2>
Directory commands can be found in the following file: <br>
<a href="https://github.com/KristoferMar/Terminal-guide/blob/master/Directories/Commands.sh" target="_blank" >https://github.com/KristoferMar/Terminal-guide/blob/master/Directories/Commands.sh</a><br><br>

<h3 class="subsubTitleSection">Terminal Configuration</h3>
Create Alias and Export's<br>
1. Create your alias or export by accessing bash_pros<br>
<b><i>nano ~/.bash_profile</i></b> <br>
2. Refresh the shell environment <br>
<b><i>source ~/.bash_profile</i></b><br>


<br>
<h3 class="subsubTitleSection">Linux server commands</h3>
Linux server commands can be found with the following linke: <br>
<a href="https://github.com/KristoferMar/Terminal-guide/blob/master/Directories/Commands.sh" target="_blank" >https://github.com/KristoferMar/Terminal-guide/blob/master/Directories/Commands.sh</a><br>


<br>
<h2>Vim</h2>
Vim is a text editor used to edit and configure files with on Linux/Unix. Vim is upwards compataible to Vi. Below you find the<br> information on how to use VIM / VI. All characters that look eg like this ":s" are executed by pressing enter.<br>
Escape any "Vim mode": <br>
<b><i>"press esc" </i></b> <br>
Insert / edit text: <br>
<b><i>"press i" </i></b> <br>
Save a file and exit: <br>
<b><i>:wq</i></b> <br>
or <br>
<b><i>:x</i></b> <br>
Trash all changes (exit without saving): <br>
<b><i>:q!</i></b> <br>

<br>

<h2>Java</h2>
Java is configurable on mac. <br>

Below we find how we can change our java version on mac. <br>
<a href="https://stackoverflow.com/questions/26252591/mac-os-x-and-multiple-java-versions">https://stackoverflow.com/questions/26252591/mac-os-x-and-multiple-java-versions</a><br>

Change default java version manually in terminal <br>
<a href="https://stackoverflow.com/questions/21964709/how-to-set-or-change-the-default-java-jdk-version-on-os-x">https://stackoverflow.com/questions/21964709/how-to-set-or-change-the-default-java-jdk-version-on-os-x</a><br><br>

<h3 class="subsubTitleSection" id="Terminal status">Status</h3>
Get uptime in Unix: <br>
<b><i>uptime</i></b> <br>
Display CPU & Memory usage + more: <br>
<b><i>top -H</i></b> <br>

<br>

<h3 class="subsubTitleSection" id="Good to know">Good to know</h3>
- On both mac and windows there is something called the "host file". This file enables us to access websites which are not necesarly on a server and open for the public network yet. To get to the file type 'sudo nano /etc/hosts' and then hit return.
