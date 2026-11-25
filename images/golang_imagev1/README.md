# Docker image - golang_imagev1
## Set appuser password

```sh
bin/dockerScript shell_as_root golang_imagev1

#inside bash
whoami # root
echo 'appuser:testpassword1' | chpasswd
exit
#
```
### Use sudo

```sh
bin/dockerScript shell golang_imagev1

#inside bash
whoami # appuser
sudo su
# enter root password = testpassword1
#
```

