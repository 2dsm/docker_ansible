## Ansible
Ansible is a tool used for managing hosts and automating tasks. The connection to the host can be established via SSH or through the WinRM module.

### Get this image in the Docker Hub
This image can be found in [https://hub.docker.com/r/dsmaia/docker_ansible](https://hub.docker.com/r/dsmaia/docker_ansible)

### Build this image

```bash
docker build --tag dsmaia/docker_ansible .
```

### Run this image
```bash
docker run --rm -v $(pwd):/root dsmaia/docker_ansible ansible-playbook -i /root/hosts /root/playbook.yml
```

### For Windows environments
Follow the instructions in winRequirements.
