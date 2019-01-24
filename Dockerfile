FROM tomcat

RUN apt-get update && apt-get -y upgrade



# Copy to images tomcat path
#ADD ./target/Login.war /usr/local/tomcat/webapps/login.war
COPY /var/lib/jenkins/workspace/project2/target/Login.war /usr/local/tomcat/webapps/login.war

#WORKDIR /usr/local/tomcat

#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
#COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/usr/local/tomcat/webapps/login.war"]
#ENTRYPOINT ["java -jar ","/usr/local/tomcat/webapps/login.war"]

CMD ["catalina.sh","run"]

EXPOSE 8080

