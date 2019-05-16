#!/usr/bin/env groovy

node {
	def app
			
	stage("Deploy") {
		sh "ssh root@10.63.243.69 \"docker stop tomcat && \
			docker rm tomcat && \
			docker pull marciojardel/devops-tomcat8:1.0.0 && \
			docker run -dit --name tomcat -p 8889:8080 marciojardel/devops-tomcat8:1.0.0\""
			}
			}
