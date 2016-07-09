#!/bin/sh
set -e
gox --os=linux
for i in gofetch*
do
[ -x "$i" ] && mv $i gofetch && tar -cJf $i.tar.xz gofetch && rm gofetch
done