#!/bin/bash

curl -s https://ip-ranges.amazonaws.com/ip-ranges.json | jq '.prefixes[] | select(.service == "ROUTE53_HEALTHCHECKS") | .ip_prefix' | tr -d \" > aws-healthcheck-ips.txt
