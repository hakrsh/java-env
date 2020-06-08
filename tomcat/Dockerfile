FROM java/env

RUN wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.55/bin/apache-tomcat-8.5.55.zip -O ./tomcat.zip && \
	unzip tomcat.zip && rm tomcat.zip 

RUN wget http://mirror.serverion.com/jenkins/war/2.239/jenkins.war && mv jenkins ./tomcat/webapps

COPY context.xml ./tomcat/webapps/manager/META-INF/context.xml
COPY tomcat-users.xml ./tomcat/conf/tomcat-users.xml

CMD ["./tomcat/bin/catalina.sh","run"]
