 #!/bin/bash

echo "Step 1" #take a filename as input
echo "Enter a file name: "
read file

echo "Step 2" #show the filename that will be used
echo "This is the filename string: $file"

echo "Step 3" #do a wc on filename and print the result to /tmp/Lyndon
wc $file >/tmp/Lyndon

echo "Step 4" # append output of date command to /tmp/Lyndon
date >>/tmp/Lyndon

echo "Step 5" # change permissions of /tmp/Lyndon to be +rw-e for owner
chmod 600 /tmp/Lyndon

echo "Step 6" # create a directory named Lyndon_Shelton
mkdir Lyndon_Shelton

echo "Step 7" # cd to the Lyndon_Shelton directory
cd Lyndon_Shelton

echo "Step 8" # copy /tmp/Lyndon to current directory
cp /tmp/Lyndon Lyndon

echo "Step 9" # copy $file into the current directory
cp ../$file $file

echo "Step 10" # append results of the command to Lyndon (ignore perimssion errors)
find /|grep Lyndon >>Lyndon 2> /dev/null

echo "Step 11" #copy the file_for_lyndon_shelton.sh file into the current directory from the parent directory
cp ../file_for_lyndon_shelton.sh file_for_lyndon_shelton.sh

echo "Step 12" # append file_for_lyndon_shelton.sh to Lyndon
               # create a tar file in the parent directory of the current directory
cat file_for_lyndon_shelton.sh >>Lyndon
cd ..
tar -cvf Lyndon_Shelton.tar Lyndon_Shelton >>Lyndon_Shelton/Lyndon

echo "Step 13" # email the Lyndon file to fadkins@iup.edu, subject: ExamInfoFromLyndonShelton
mail -s ExamInfoFromLyndonShelton -A Lyndon_Shelton/Lyndon fadkins@iup.edu

echo "step 14"
cp Lyndon_Shelton/Lyndon ~/githubtask/unix/LyndonShelton_submit
