#!/bin/sh
set -e
gox --os=linux
for i in gofetch*
do
[ -x "$i" ] && mv $i gofetch && tar -cJf $i.tar.xz gofetch && rm gofetch && s3cmd put --acl-public $i.tar.xz s3://gofetch
done