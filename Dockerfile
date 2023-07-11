FROM alpine:3.18
RUN apk update && apk add --no-cache \
    openssh \
    ansible
RUN adduser -u 1000 -h "/home/ansible" -g 1000 -D -G wheel ansible wheel
CMD ["tail", "-f", "/dev/null"]