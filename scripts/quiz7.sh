#!/bin/bash #shebang that indicates the path to `bash`
set -e #terminate script if any command exits with a nonzero exit status
set -u #abort script if variable's value is unset
set -o pipefail #nonzero exit status in a pipe will cause the entire pipe to return a nonzero status

echo After completing DESeq2 several times, I have a lot of files that I no longer need cluttering up my repository. There are eight folders in particular that I do not want to see right away when I open my analysis folder. In this script, I will move those folders to a new directory called irrelevant-analyses.

#Set variables
echo Set variables
directoryName="irrelevant-analyses"

#I want to ensure that I'm doing my work in my `analysis` directory, and not in any other folder. I will do this by changing my working directory.

echo Change working directory
cd /Users/yaamini/Documents/yaaminiv-fish546-2016/analyses

#To double check that I'm in the right directory, I will execute an if statement. If I am in the right directory, then I will continue with my script.

echo Confirm working directory change with if statement
if [ $? -ne 0 ]
then echo "Couldn't change to desired directory. Make sure target directory exists before executing script."
fi

#My first step is to make the new directory.

echo Create a new directory
mkdir "$directoryName"

#I will check to see if this directory was made by listing the files in my analyses directory.

echo Confirm directory creation
ls

#Using a pipe with `find` and `xargs`, I will take the eight directories I want to move, and relocate them to my irrelevant-analyses folder. The `-type d` argument for `find` allows me to specify that I only want the command to search for directories that match my query, *kallisto*.

echo Use `find` and `xargs` to move files.
find *kallisto* -type d | xargs -I '{}' mv '{}' irrelevant-analyses

#To see if this worked, I will list the content of irrelevant-analyses

echo Confirm files were moved by looking at irrelevant-analyses directory content
cd /Users/yaamini/Documents/yaaminiv-fish546-2016/analyses/irrelevant-analyses
ls

echo Success!
