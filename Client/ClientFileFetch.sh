#Code to copy files from the server & check checksum of two files

rc-service sshd restart

sshpass -p "123456" scp -P 22 -o "StrictHostKeyChecking no" server@172.10.0.10:/serverdata/file1 /clientdata
sshpass -p "123456" scp -P 22 -o "StrictHostKeyChecking no" server@172.10.0.10:/serverdata/checksumvaluefile1.md5 /clientdata

echo "Files Received Successfully"

file1=$(md5sum file1)
file2=$(cat checksumvaluefile1.md5)

echo "Checking... "

if [ "$file1" = "$file2" ]
then 
    echo "File is correct."
else
    echo "File is not correct."
    rm file1 
    rm checksumvaluefile1.md5
fi

sh
