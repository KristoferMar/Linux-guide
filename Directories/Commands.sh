# Create a new directory 
mkdir

# Create multilpe directories recursively
mkdir -p foo/bar/zoo/andsoforth

# Edit name of a directory
mv <source_directory> <target_directory>

# Change accessrights for directory
chmod 777 directory_name
# Recursivly
chmod -R 777 mode directory_name

# Delete directory 
rmdir <source_directory>

# Find a specific directory on linux
find / -type d -name "dir-name-here"
