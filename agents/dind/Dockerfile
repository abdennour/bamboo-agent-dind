FROM atlassian/bamboo-agent-base:6.8.1

USER root
# RUN wget http://get.docker.com/builds/Linux/x86_64/docker-latest.tgz
# RUN tar -xvzf docker-latest.tgz
# RUN mv docker/* /usr/bin/
ENV DOCKERVERSION=18.09.0
RUN wget https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar -xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /usr/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz

COPY postrun.sh /usr/bin/postrun
RUN chmod a+x /usr/bin/postrun

USER ${BAMBOO_USER}
RUN ${BAMBOO_USER_HOME}/bamboo-update-capability.sh "system.docker.executable" /usr/bin/docker
