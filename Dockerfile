FROM wordpress

RUN apt-get update \
  && echo "root:Docker!" | chpasswd \
  && apt install -y --no-install-recommends openssh-server

EXPOSE 2222

COPY ./sshd_config /etc/ssh/
COPY ./init_container.sh .

#ENTRYPOINT ["/bin/bash", "-c", "./init_container.sh && docker-entrypoint.sh apache2-foreground"]