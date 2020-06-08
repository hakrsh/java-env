FROM java/env

RUN wget http://mirrors.neusoft.edu.cn/eclipse/technology/epp/downloads/release/2020-03/Reclipse-java-2020-03-R-linux-gtk-x86_64.tar.gz -O ./eclipse.tar.gz  && \
	tar xzf eclipse.tar.gz && rm eclipse.tar.gz

RUN export uid=1000 gid=1000 
RUN mkdir -p /home/developer
RUN echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN echo "developer:x:${uid}:" >> /etc/group
RUN echo "developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chmod 0440 /etc/sudoers
RUN chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer

CMD ./eclipse/eclipse
