### gtfo.sh
gtfobin checker

### Description
Checks a list of binaries against gtfobins.github.io

### Usage
Paste a list of binaries into a text file
./gtfo.sh <txt file>

*binaries.txt contains an example list of binaries

### Example
```
$ cat binaries.txt 
/usr/bin/gpasswd
/usr/bin/chfn
/usr/bin/pkexec
/usr/bin/umount
/usr/bin/less
/usr/bin/passwd
/usr/bin/sudo
/usr/bin/chsh
/usr/bin/at
/usr/bin/fusermount
/usr/bin/su
/usr/bin/mount
/usr/bin/newgrp
/usr/sbin/docker

$ ./gtfo.sh binaries.txt 
docker:file-read - https://gtfobins.github.io/gtfobins/docker/
docker:file-write - https://gtfobins.github.io/gtfobins/docker/
docker:shell - https://gtfobins.github.io/gtfobins/docker/
docker:sudo - https://gtfobins.github.io/gtfobins/docker/
docker:suid - https://gtfobins.github.io/gtfobins/docker/
less:file-read - https://gtfobins.github.io/gtfobins/less/
less:file-write - https://gtfobins.github.io/gtfobins/less/
less:shell - https://gtfobins.github.io/gtfobins/less/
less:sudo - https://gtfobins.github.io/gtfobins/less/
less:suid - https://gtfobins.github.io/gtfobins/less/
mount:sudo - https://gtfobins.github.io/gtfobins/mount/
pkexec:sudo - https://gtfobins.github.io/gtfobins/pkexec/
su:sudo - https://gtfobins.github.io/gtfobins/su/
```
