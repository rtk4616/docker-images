#!/bin/bash

cd /formations/cours/openstack
mkdir -v output-pdf
cd /formations
make course=openstack
mv -v result/*.pdf /formations/cours/openstack/output-pdf/
