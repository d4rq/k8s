#!/bin/bash

set -a
source .env
set +a

helm secrets \
    --evaluate-templates \
    -b vals \
    upgrade --install \
    app ./ \
    -n app --create-namespace \
    --values values.yaml