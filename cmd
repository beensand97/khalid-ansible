docker build -t khaliddinh/ansible -f Dockerfile .
docker container run --name khalid-ansible  --rm -d khaliddinh/ansible