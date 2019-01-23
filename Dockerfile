FROM tomcat

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

# Copy to images tomcat path
COPY ./target/Login.war /usr/local/tomcat/webapps/login.war

#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
#COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/usr/local/tomcat/webapps/login.war"]
#ENTRYPOINT ["java -jar ","/usr/local/tomcat/webapps/login.war"]

EXPOSE 8080

