# Open file with less

less <file_name>

Once you'vee opened a log file (or any file) you can use the following keys to execute commands.

### Forward Search

- / - Search for a pattern which will take you to the next occurrence
- n - for next match in forward
- N - for previous match in backwards

### Less Command - Screen Navigation

Use the following screen navigation commands while viewing large log files.

- CTRL + F - forward one window
- CTRL + B - backward one window
- CTRL + D - forward half window
- CTRL + U - backward half window

### Less Command - Line navigation

In a smaller chunck of data, where you want to locate particular error, you may want to navigate line by line using these keys:

- j - navigate forward by one line
- k - navigate backward by one line

### Less Command - Other Navigation

The following are other navigation operations that you can use inside the less pager.

- G - go to end of file
- g - go to the start of file
- q or ZZ - exit the less pager.

### Transform into tail

Once you run less you wont be getting any more data. If you want more data you can <b> press F </b> which will transform the less command into a "tail -f" command.

#### More information can be found here

https://www.thegeekstuff.com/2010/02/unix-less-command-10-tips-for-effective-navigation/
