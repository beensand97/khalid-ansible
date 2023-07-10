FROM alpine:3.18
RUN apk update && apk add --no-cache \
    openssh \
    ansible
RUN adduser -u 1000 -g 1000 -D -G wheel ansible wheel
RUN mkdir -p "/etc/ansible" && touch /etc/ansible/hosts
COPY hosts /etc/ansible/hosts
CMD ["tail", "-f", "/dev/null"]