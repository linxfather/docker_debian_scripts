# Docker image - clang_golang_v1
## Set appuser password

```sh
bin/dockerScript shell_as_root clang_golang_v1

#inside bash
whoami # root
echo 'appuser:testpassword1' | chpasswd
exit
#
```
### Use sudo

```sh
bin/dockerScript shell clang_golang_v1

#inside bash
whoami # appuser
sudo su
# enter root password = testpassword1
#
```

