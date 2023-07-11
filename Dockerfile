FROM alpine:3.18
RUN apk update && apk add --no-cache \
    openssh \
    ansible
RUN adduser -u 1000 -h "/home/ansible" -g 1000 -D -G wheel ansible wheel
# RUN chown -R ansible /home/ansible
# USER ansible
# WORKDIR /home/ansible
# COPY ansible_key .ssh/ansible_key
# RUN chmod 400 .ssh/ansible_key
COPY . /app
CMD ["tail", "-f", "/dev/null"]