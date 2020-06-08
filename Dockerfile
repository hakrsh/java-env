FROM centos:latest

RUN yum -y install java-1.8.0-openjdk wget unzip vim git curl maven gcc gcc-c++ kernel-devel make

RUN wget http://mirrors.neusoft.edu.cn/eclipse/technology/epp/downloads/release/2020-03/Reclipse-java-2020-03-R-linux-gtk-x86_64.tar.gz -O ./eclipse.tar.gz  && \
	tar xzf eclipse.tar.gz && rm eclipse.tar.gz

RUN wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.55/bin/apache-tomcat-8.5.55.zip -O ./tomcat.zip && \
	unzip tomcat.zip && rm tomcat.zip 
RUN wget http://mirror.serverion.com/jenkins/war/2.239/jenkins.war && mv jenkins ./tomcat/webapps

COPY context.xml ./tomcat/webapps/manager/META-INF/context.xml
COPY tomcat-users.xml ./tomcat/conf/tomcat-users.xml

RUN export uid=1000 gid=1000 
RUN mkdir -p /home/developer
RUN echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN echo "developer:x:${uid}:" >> /etc/group
RUN echo "developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chmod 0440 /etc/sudoers
RUN chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer

CMD ["./tomcat/bin/catalina.sh","run"]
