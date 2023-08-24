# unified_server_deployment
Deploy servers with Ansible


Deploy server to machine:
requirements
- set certificate based auth on the node
- Install raspbian on the node



Install ansible on host:
Mac:

```
brew install ansible
```
Ubuntu Linux: 

```
sudo apt-get update && sudo apt-get install -y ansible
```


Clone the git repo
```
https://github.com/warshoot3r/unified_server_deployment.git
```

cd to server folder
```
cd unified_server_deployment/server
```

run shell script

```
cd {server} && ./run.sh
```
