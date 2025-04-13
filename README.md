# html_CICDCD

CICDCD in Docker environment

Require :
- Docker Engine instal

If not already done start an instance of jenkins_master
```
docker run --name jenkins -p <choose_a_port>:8080 jenkins/jenkins
```

```
docker run --init --name jenkins_agent -v /var/run/docker.sock:/var/run/docker.sock jenkins/inbound-agent
 -url http://<Jenkins_master_IP_adress>:8080 <secret> <agent_name>
```