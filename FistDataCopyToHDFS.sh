#!/bin/sh
# This is my fist script created for working with Hadoop.
# Basicly, it loads a BIG text file to the Hadoop Distributed File System (HDFS)
# Working on a Cloudera VM CDH QuickStart (Hadoop Ecosystem)
# Prereq: words.txt file in /home/cloudera/BigData

# Go to the directory where the file es located.
cd /home/cloudera/BigData/

# Copy file to HDFS
hadoop fs -copyFromLocal words.txt

#Check if the file was copied
hadoop fs -ls

# Should get a result like the following:
# [cloudera@quickstart BigData]$ hadoop fs -ls
# Found 1 items
# -rw-r--r--   1 cloudera cloudera    5458199 2017-11-08 08:19 words.txt

# Ok, so, let's try copying the file within the HDFS
hadoop fs -cp words.txt words2.txt

# Also, we can try copying a file from HDFS to the local directory
hadoop fs -copyToLocal words2.txt

# Finally, let's try deleting a file from hadoop file system.
hadoop fs -rm words2.txt

# You'll get something like This
# [cloudera@quickstart BigData]$ hadoop fs -rm words2.txt
# 17/11/08 08:28:40 INFO fs.TrashPolicyDefault: Namenode trash configuration: Deletion interval = 0 minutes, Emptier interval = 0 minutes.
# Deleted words2.txt
