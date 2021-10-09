#! /bin/bash

# Organiza os arquivos em receptor comum


suwind <apollo16.su key=gx min=0 max=0 >apollo16g0.su
suwind <apollo16.su key=gx min=4572 max=4572 >apollo16g4572.su
suwind <apollo16.su key=gx min=9144 max=9144 >apollo16g9144.su

segyhdrs <apollo16g0.su bfile=bfileg0.bin hfile=hfileg0.bin  >apollo16g0copy.su
segywrite <apollo16g0copy.su tape=apollo16g0.sgy hfile=hfileg0.bin bfile=bfileg0.bin 

segyhdrs <apollo16g4572.su bfile=bfileg4572.bin hfile=hfileg4572.bin  >apollo16g4572copy.su
segywrite <apollo16g4572copy.su tape=apollo16g4572.sgy hfile=hfileg4572.bin bfile=bfileg4572.bin

segyhdrs <apollo16g9144.su bfile=bfileg9144.bin hfile=hfileg9144.bin  >apollo16g9144copy.su
segywrite <apollo16g9144copy.su tape=apollo16g9144.sgy hfile=hfileg9144.bin bfile=bfileg9144.bin
