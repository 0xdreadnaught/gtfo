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
less:shell
less:file-write
less:file-read
less:suid
less:sudo
mount:sudo
docker:shell
docker:file-write
docker:file-read
docker:suid
docker:sudo
```