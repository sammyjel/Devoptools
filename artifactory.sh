sudo apt update
sudo apt install openjdk-8-jdk
sudo wget https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.6.zip
sudo apt install unzip -y
sudo unzip -o jfrog-artifactory-oss-6.9.6.zip -d /opt/
cd /opt/artifactory-oss-6.9.6
./bin/artifactory.sh start

http://<your-server-ip>:8081
