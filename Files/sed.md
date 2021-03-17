<h1>sed</h1>
Usefull info sites:
https://www.cyberciti.biz/faq/how-to-use-sed-to-find-and-replace-text-in-files-in-linux-unix-shell/

https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/

<h2>Find and replace text globally in file</h2>
<i>sed -i 's/old-text/new-text/g' input.txt</i><br>
- The 's' is the substitude command of sed for find and replace. <br>
- It tells the sed to find all occurences of 'old-text' and replace with 'new-text' in a file named input.txt<br>
- The substitute flag /g means global replacement in file. <br>
