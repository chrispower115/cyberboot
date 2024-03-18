#\!/bin/bash\
#PURPOSE: automate the chmod+x etc. required when setting up new scripts

#check/create scripts variable
#script="newscript.sh" #TODO pass as a function call eventually
echo "Enter the script name on the next line. Example: new_script.sh"
read -p "Script name: " script

#create
touch $script

#add shebang and header
echo "#\!/bin/bash\ " >> $script
echo "#*************" >> $script
echo "#Purpose: " >> $script
echo "#Author:" >> $script
echo "#Date:" >> $script 
echo "#*************" >> $script

#make executable - change to editor of choice
chmod +x $script && vi $script 
