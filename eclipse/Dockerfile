FROM java/env

RUN wget http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/oxygen/2/eclipse-jee-oxygen-2-linux-gtk-x86_64.tar.gz -O ./eclipse.tar.gz  && \
	tar xzvf eclipse.tar.gz && rm eclipse.tar.gz

RUN export uid=1000 gid=1000 && \
	mkdir -p /home/developer/workspace && \
	echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
	echo "developer:x:${uid}:" >> /etc/group && \
	echo "developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
	chmod 0440 /etc/sudoers && \
	chown ${uid}:${gid} -R /home/developer/workspace 

USER developer
ENV HOME /home/developer

