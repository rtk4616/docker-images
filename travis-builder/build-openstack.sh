#!/bin/bash


cd /formations

mkdir -v openstack-s3
ls -l
make course=openstack screen.pdf
mv -v *.pdf openstack-s3/


