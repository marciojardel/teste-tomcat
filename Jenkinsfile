#!/usr/bin/env groovy

node {
	def app
	
	stage("Clone") {
		git 'https://github.com/marciojardel/teste-tomcat.git'
		}
		
	stage("Build") {
		app = docker.build("marciojardel/devops-tomcat8")
		}
		
	stage("Push") {
		docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
				app.push("${env.BUILD_ID}")
				app.push("latest")
			}
		}
		
	stage("Deploy") {
		docker stop tomcat && \
			docker rm tomcat && \
			docker pull marciojardel/devops-tomcat8:1.0.0 && \
			docker run -dit --name tomcat -p 8889:8080 marciojardel/devops-tomcat8:1.0.0
