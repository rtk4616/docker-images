#!/bin/bash

cd /formations/cours/openstack
mkdir -v output-pdf
make course=openstack
mv -v result/*.pdf output-pdf/
