echo "This is random data." >> file1

truncate -s 1k file1

md5sum file1 > checksumvaluefile1.md5

sh 
