FROM java/env

RUN curl -o netbeans.zip -# -SL https://downloads.apache.org/netbeans/netbeans/12.0/netbeans-12.0-bin.zip  && \
	unzip netbeans.zip && rm netbeans.zip

RUN export uid=1000 gid=1000 && \
	mkdir -p /home/developer/workspace && \
	echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
	echo "developer:x:${uid}:" >> /etc/group && \
	echo "developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
	chmod 0440 /etc/sudoers && \
	chown ${uid}:${gid} -R /home/developer/workspace 

USER developer
ENV HOME /home/developer

