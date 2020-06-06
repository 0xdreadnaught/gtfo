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
docker:file-read
docker:file-write
docker:shell
docker:sudo
docker:suid
less:file-read
less:file-write
less:shell
less:sudo
less:suid
mount:sudo
```