# execute the hadoop job in this file
# We should set: 1. the IP of the virtual cluster's master
#		 2. the hadoop path
#		 3. the command of executing the job

node1="192.168.130.1"
node2="192.168.130.2"
node3="192.168.130.10"
node4="192.168.130.13"

ssh $node1 "cd /usr/local/hadoop/hadoop-1.1.0 && bin/start-mappred.sh && bin/hadoop jar hadoop-1.1.0-examples.jar sort rand rand-output"

ssh $node2 "cd /usr/local/hadoop/hadoop-1.1.0 && bin/start-mappred.sh && bin/hadoop jar hadoop-1.1.0-examples.jar terasort /user/terasort/3G-input 3G-output"

ssh $node3 "cd /usr/local/hadoop/hadoop-1.1.0 && bin/start-mappred.sh && bin/hadoop jar hadoop-1.1.0-examples.jar wordcount data6.4.txt output1"

ssh $node4 "cd /usr/local/hadoop/hadoop-1.1.0 && bin/start-mappred.sh && bin/hadoop jar hadoop-1.1.0-examples.jar wordcount data29.txt output2"

