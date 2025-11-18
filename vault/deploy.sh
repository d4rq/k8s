#!/bin/bash

set -a
source .env
set +a

helm upgrade --install \
    vault hashicorp/vault \
    -n vault --create-namespace \
    -f values.yaml