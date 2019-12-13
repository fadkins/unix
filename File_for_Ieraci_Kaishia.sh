#! /bin/bash 
#1.
echo "Step 1"
echo "Enter filename:"
read file
filepath="/home/vpvw/githubtask/unix/$file"

#2.
echo " " 
echo "Step 2" 
echo "This is the input filename string:$filepath"

#3.
echo " " 
echo "Step 3" 
wc $filepath > /tmp/Kaishia

#4.
echo " " 
echo "Step 4" 
date >> /tmp/Kaishia

#5.
echo " " 
echo "Step 5" 
chmod 600 /tmp/Kaishia

#6.
echo " " 
echo "Step 6" 
mkdir /home/vpvw/githubtask/unix/Kaishia

#7.
echo " " 
echo "Step 7" 
cd /home/vpvw/githubtask/unix/Kaishia/

#8.
echo " " 
echo "Step 8" 
cp /tmp/Kaishia .

#9.
echo " " 
echo "Step 9" 
cp $filepath .

#10.
echo " " 
echo "Step 10" 
find / 2>/dev/null | grep Kaishia >> /home/vpvw/githubtask/unix/Kaishia/Kaishia

#11.
echo " " 
echo "Step 11" 
cp /home/vpvw/githubtask/unix/File_for_Ieraci_Kaishia.sh .

#12.
echo " " 
echo "Step 12" 
cat File_for_Ieraci_Kaishia.sh >> Kaishia
#tar; source for syntax: the tar man pages
tar -cvf ../Kaishia.tar File_for_Ieraci_Kaishia.sh testing.txt Kaishia >> Kaishia

#13.
echo " " 
echo "Step 13"
#source for attachment option: mail man pages
mail fadkins@iup.edu -s "ExamInfoFromKaishiaIeraci" -A /home/vpvw/githubtask/unix/Kaishia.tar

#14.
echo " " 
echo "Step 14" 
cp /home/vpvw/githubtask/unix/Kaishia.tar ~/githubtask/unix/KaishiaIeraci_submit
