FROM tomcat


# Copy to images tomcat path
ADD ./target/Login.war /usr/local/tomcat/webapps

EXPOSE 8080

