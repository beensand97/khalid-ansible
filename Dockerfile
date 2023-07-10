FROM alpine:3.18
RUN apk update && apk add --no-cache \
    openssh \
    ansible
# WORKDIR /home/ansible
# RUN mkdir -p "/etc/ansible" && touch /etc/ansible/hosts &&  mkdir .ssh
# COPY hosts /etc/ansible/hosts
# COPY ansible_key .ssh/ansible_key
RUN adduser -u 1000 -g 1000 -D -G wheel ansible wheel
CMD ["tail", "-f", "/dev/null"]