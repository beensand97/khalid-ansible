FROM alpine:3.18
RUN apk update && apk add --no-cache \
    openssh \
    ansible
RUN adduser -u 1000 -g 1000 -D -G wheel ansible wheel
WORKDIR /home/ansible
# RUN mkdir -p "/etc/ansible" && touch /etc/ansible/hosts &&  mkdir .ssh
# COPY hosts /etc/ansible/hosts
RUN mkdir .ssh
COPY ansible_key .ssh/ansible_key
RUN chmod 400 .ssh/ansible_key && chown -R ansible /home/ansible
COPY . /app
CMD ["tail", "-f", "/dev/null"]