# html_CICDCD

CICDCD in Docker environment

Require :
- Docker Engine instal

If not already done start an instance of jenkins_master
```
docker run --name jenkins -p <choose_a_port>:8080 jenkins/jenkins
```

Then build and start an instance of a jenkins_agent
If your are on Windows, execute this command in Powershell or cmd
```
cd Jenkins-agent
docker build -t jenkins-agent-with-docker .
docker run --init --name jenkins_agent -v /var/run/docker.sock:/var/run/docker.sock jenkins-agent-with-docker -url http://<Jenkins_master_IP_adress>:8080 <secret> <agent_name>
```

Want to try the entire CICD on your own repository and registry ?
Fork this project and use the jenkinsfile inside Custom folder