#!/bin/sh
# This is my second script created for working with Hadoop.
# In this scipt, an app called 'wordcount' will be run over the file copied to HDFS
# Prereq: words.txt file in HDFS
# Working on a Cloudera VM CDH QuickStart (Hadoop Ecosystem)

# The following command can be ommited. Just to check the pre-installed example
# apps on the Cloudera QuickStart VM
hadoop jar /usr/jars/hadoop-examples.jar

# To check if the words.txt file is in HDFS
hadoop fs -ls

# Let's check how to use the wordcount app
hadoop jar /usr/jars/hadoop-examples.jar wordcount

# Run wordcount for words.txt -> output written in 'out' directory
hadoop jar /usr/jars/hadoop-examples.jar wordcount words.txt out

# To check the files generated in the out folder
hadoop fs -ls out

# Copy WordCount results to local file system
hadoop fs -copyToLocal out/part-r-00000 wordcount_result.txt

# Now, the result can be opened. For example:
more wordcount_result.txt
