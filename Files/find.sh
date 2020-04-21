# Find a file called testfile.txt in current and sub-directories.
find . -name "testfile.txt"	

# Find a file called the included text + more. 
find . -name "test*"	

# Find all .jpg files in the /home and sub-directories.
find /home -name *.jpg	

# Find an empty file within the current directory.
find . -type f -empty	

# Find all .db files (ignoring text case) modified in the last 7 days by a user named exampleuser.
find /home -user exampleuser -mtime -7 -iname ".db"	
