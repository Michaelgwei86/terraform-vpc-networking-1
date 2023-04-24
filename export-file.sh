#!/bin/bash
# export VPC
export VPC_ID=$(terraform output -json | jq -r .vpc_id.value)
# export private subnets
export PRIVATE_SUBNETS_ID_A=$(terraform output -json | jq -r .private_subnets_id.value[0])
export PRIVATE_SUBNETS_ID_B=$(terraform output -json | jq -r .private_subnets_id.value[1])
export PRIVATE_SUBNETS_ID_C=$(terraform output -json | jq -r .private_subnets_id.value[2])
# export public subnets
export PUBLIC_SUBNETS_ID_A=$(terraform output -json | jq -r .public_subnets_id.value[0])
export PUBLIC_SUBNETS_ID_B=$(terraform output -json | jq -r .public_subnets_id.value[1])
export PUBLIC_SUBNETS_ID_C=$(terraform output -json | jq -r .public_subnets_id.value[2])

