#!/bin/sh
. ./ic_env.sh
ic resource service-instances --long > instance.id

ibmcloud resource service-instance "Power Systems Virtual Server-yj" --id
