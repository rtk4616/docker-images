#!/bin/bash


cd /formations

mkdir -v openstack-s3
make course=openstack
mv -v result/*.pdf openstack-s3/

