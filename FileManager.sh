#!/bin/bash

echo '*** Create Dir 1,2 & 3 ***'
mkdir /tmp/dir1 /tmp/dir2 /tmp/dir3

echo '*** List Dir ***'
ls -l /tmp | grep ^d

echo '*** List File ***'
ls -l /tmp | grep ^-

echo '*** List All ***'
ls -la /tmp

echo '*** Deleted the dir3 ***'
rmdir /tmp/dir3

echo '*** Add file to dir1 ***'
touch /tmp/dir1/file1.txt

echo '*** Add content to file1 ***'
echo -e 'Initial Content \n Initial Content \n Initial Content \n Initial Content \n Initial Content \n Initial Content \n Initial Content \n Initial Content \n Initial Content \n Initial Content \n Initial Content \n Initial Content \nInitial Content' > /tmp/dir1/file1.txt

echo '*** Add content to file1 ***'
echo 'Additional Content' >> /tmp/dir1/file1.txt

echo '*** Add content to the begining of the file ***'
echo 'Additional Content' | cat - /tmp/dir1/file1.txt > test && mv test /tmp/dir1/file1.txt

echo '*** print top 5 line ***'
head -n 5 /tmp/dir1/file1.txt

echo '*** print last 5 line ***'
tail -n 5 /tmp/dir1/file1.txt

echo '*** print content at line 10 ***'
head -n 10 /tmp/dir1/file1.txt | tail -n 1

echo '*** print content between line 5-10 ***'
head -n 10 /tmp/dir1/file1.txt | tail -n 5

echo '*** rename file1  -> file2 ***'
mv /tmp/dir1/file1.txt /tmp/dir1/file2.txt

echo '*** move file to dir2 ***'
mv /tmp/dir1/file2.txt /tmp/dir2/

echo '*** copy file2 to dir1 ***'
cp /tmp/dir2/file2.txt /tmp/dir1/

echo '*** copy file to dir1 ***'
cp /tmp/dir1/file2.txt /tmp/dir1/file3.txt

echo '*** clear file3 data ***'
echo > /tmp/dir1/file3.txt

echo '*** delete file2 ***'
rm /tmp/dir1/file2.txt






