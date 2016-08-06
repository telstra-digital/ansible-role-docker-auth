# Ansible role to create authentication server for Docker Registry 2

### Introduce

This role surposes you build load balancer (ELB) in front of authentication servers for ssl offloading. Backend is openldap. These docker_auth servers are stateless and can be auto-scaled.

Password and certificates are saved to Hashicorp vault servers.

### Flow chart

docker daemon --> (https:443) ELB-1 (http:5000)--> docker-registry --> (https:443) ELB-2 (http:5001)--> docker_auth --> (tcp:389) ELB-3 (tcp:389) --> openldap

### Refer: 

https://github.com/cesanta/docker_auth

https://github.com/kwk/docker-registry-setup
