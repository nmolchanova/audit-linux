Audit Linux Endpoint 
============================
This stack will perform linux hardening and CIS auditing 

## Description
This composite will audit linux hosts by running inspec profiles against Linux hardening and Linux CIS rules.

* ![Linux Baseline](https://github.com/dev-sec/linux-baseline "Inspec profile github link")

* ![Linux Patch Baseline](https://github.com/dev-sec/linux-patch-baseline "Inspec profile github link")

* ![CIS Distribution Independent Linux Benchmark](https://github.com/dev-sec/cis-dil-benchmark "Inspec profile github link")

## Hierarchy



## Required variables with no default

**None**


## Required variables with default

**None**


## Optional variables with default

### `AUDIT_ENDPOINT_LINUX_PROFILES_ALERT_LIST`:
  * description: 
  * default: linux-baseline, cis-dil-benchmark, linux-patch-baseline


## Optional variables with no default

### `FILTERED_OBJECTS`:
  * description: JSON object of string or regex of aws objects to include or exclude and tag in audit

## Tags
1. Audit
1. Best Practices
1. CIS

## Categories


## Diagram


## Icon


