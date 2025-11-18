#!/bin/bash

set -a
source .env
set +a

helm secrets \
    --evaluate-templates \
    -b vals \
    upgrade --install \
    postgres oci://registry-1.docker.io/bitnamicharts/postgresql \
    -n postgres --create-namespace \
    -f values.yaml