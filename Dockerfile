FROM tomcat


# Copy to images tomcat path
ADD ./target/OurBank.war /usr/local/tomcat/webapps

EXPOSE 8080

