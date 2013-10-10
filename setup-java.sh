#!/bin/sh                                                                                                                                                                
#replace the download links with the current version of java:                                                                                                            

#begin install                                                                                                                                                           
sudo mkdir /usr/local/java
cd /usr/local/java

#using 64 bit repo:                                                                                                                                                      
sudo wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com" "http://download.oracle.com/otn-pub/java/jdk/7u40-b43/jdk-7u40-linux-x64.tar.gz"
sudo tar xzf jdk-7u40-linux-x64.tar.gz
sudo rm jdk-7u40-linux-x64.tar.gz

#on 32bit ubuntu:                                                                                                                                                        
#sudo wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com" "http://download.oracle.com/otn-pub/java/jdk/7u40-b43/jdk-7u40-linux-i586.tar.gz"         
#sudo tar xzf jdk-7u40-linux-i586.tar.gz                                                                                                                                 
#sudo rm jdk-7u40-linux-i586.tar.gz                                                                                                                                      

cd ~

# adding the following to .bashrc: or to system wide ./etc/profile                                                                                                       
echo "export JAVA_HOME=/usr/local/java/jdk1.7.0_40" >> .bash_profile
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> .bash_profile
#echo "JRE_HOME=\$JAVA_HOME/jre" >> .bashrc                                                                                                                              
#echo "PATH=\$PATH:\$JRE_HOME/bin" >> .bashrc                                                                                                                            
#echo "export JAVA_HOME" >> .bash_profile                                                                                                                                
#echo "export JRE_HOME" >> .bashrc                                                                                                                                       
#echo "export PATH" >> .bash_profile                                                                                                                                     

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.7.0_40/bin/java" 1
java -version

#to create firefox plugin:                                                                                                                                               
#cd /usr/lib/mozilla/plugins                                                                                                                                             
#sudo ln -s /usr/local/java/jdk1.7.0_40/lib/i386/libnpjp2.so                                                                                                             

