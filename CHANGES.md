## 12-19-2021 automated release note generation

CHANGES.md deprecated. See release notes and Dockerfile for specific versions and configuration.  

## 12-06-2021 package versions in circleci-infra-aws:1.2.0

FROM twdps/circleci-base-image:alpine-3.1.4^  

| package         | version      |
|-----------------|--------------|
| terraform       | 1.0.11^      |
| tflint          | 0.33.1^      |
| curl            | 7.80.0-r0^   |
| wget            | 1.21.2-r2^   |
| gnupg           | 2.2.31-r1^   |
| docker          | 20.10.11-r0^ |
| jq              | 1.6_rc1-r1   |
| python3         | 3.9.7-r4^    |
| pip: awscli     | 1.22.21^     |
| pip: invoke     | 1.6          |
| pip: requests   | 2.26.0       |
| pip: jinja2     | 3.0.3^       |
| nodejs          | 16.13.1-r0^  |
| npm             | 8.1.3-r0^    |
| npm: bats       | 1.5.0^       |
| ruby            | 3.0.3-r0^    |
| gem: awspec     | 1.25.1^      |
| gem: inspec     | 4.50.3^      |
| gem: json       | 2.6.1^       |


FROM twdps/circleci-base-image:slim-3.1.4^  

| package         | version                   |
|-----------------|---------------------------|
| terraform       | 1.0.11^                   |
| tflint          | 0.33.1^                   |
| curl            | 7.79.1-2^                 |
| wget            | 1.21.2-2+b1^              |
| gnupg           | 2.2.27-2                  |
| docker          | 20.10.11^                 |
| jq              | 1.6-2.1                   |
| python3         | 3.9.8-1^                  |
| pip: awscli     | 1.22.21^                  |
| pip: invoke     | 1.6                       |
| pip: requests   | 2.26.0                    |
| pip: jinja2     | 3.0.3^                    |
| nodejs          | 14.18.2-deb-1nodesource1^ |
| npm: bats       | 1.5.0^                    |
| ruby            | 1:2.7.6^                  |
| gem: awspec     | 1.25.1^                   |
| gem: inspec     | 4.50.3^                   |
| gem: json       | 2.6.1^                    |

## 09-16-2021 package versions in circleci-infra-aws:1.1.0

FROM twdps/circleci-base-image:alpine-3.1.3^  

| package         | version      |
|-----------------|--------------|
| terraform       | 1.0.7^       |
| tflint          | 0.32.1^      |
| curl            | 7.79.0-r0^   |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 0.10.7-r2^   |
| jq              | 1.6_rc1-r1   |
| python3         | 3.9.5-r1     |
| pip: awscli     | 1.20.43^     |
| pip: invoke     | 1.6          |
| pip: requests   | 2.26.0       |
| pip: jinja2     | 3.0.1        |
| nodejs          | 14.17.6-r0   |
| npm             | 7.17.0-r0    |
| npm: bats       | 1.4.1        |
| ruby            | 2.7.4-r0     |
| gem: awspec     | 1.25.0^      |
| gem: inspec     | 4.41.20      |
| gem: json       | 2.5.1        |


FROM twdps/circleci-base-image:slim-3.1.3^  

docker install pinned to bullseye since there is no bookworm or Sid release  
CVE scan turned off - no fix for the following:  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-WGET-1277613  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1085112  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-RUBYGEMS-1279004  
https://snyk.io/vuln/SNYK-DEBIANUNSTABLE-PYTHON39-1290157  

| package         | version                   |
|-----------------|---------------------------|
| terraform       | 1.0.7^                    |
| tflint          | 0.32.1^                   |
| curl            | 7.74.0-1.3+b1             |
| wget            | 1.21-1+b1                 |
| gnupg           | 2.2.27-2                  |
| docker          | 20.10.7                   |
| jq              | 1.6-2.1                   |
| python3         | 3.9.2-3                   |
| pip: awscli     | 1.20.43^                  |
| pip: invoke     | 1.6                       |
| pip: requests   | 2.26.0                    |
| pip: jinja2     | 3.0.1                     |
| nodejs          | 14.17.6-deb-1nodesource1^ |
| npm: bats       | 1.4.1                     |
| ruby            | 1:2.7+2                   |
| gem: awspec     | 1.25.0                    |
| gem: inspec     | 4.41.20                   |
| gem: json       | 2.5.1                     |

## 09-04-2021 package versions in circleci-infra-aws:1.0.2

Added dependant package lsb-release. No primary package changes.  

## 09-03-2021 package versions in circleci-infra-aws:1.0.1

updated gnupg installation configuration.  

FROM twdps/circleci-base-image:alpine-3.1.0  

| package         | version      |
|-----------------|--------------|
| terraform       | 1.0.5        |
| tflint          | 0.31.0       |
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 0.10.7-r1^   |
| jq              | 1.6_rc1-r1   |
| python3         | 3.9.5-r1     |
| pip: awscli     | 1.20.30      |
| pip: invoke     | 1.6          |
| pip: requests   | 2.26.0       |
| pip: jinja2     | 3.0.1        |
| nodejs          | 14.17.6-r0^  |
| npm             | 7.17.0-r0    |
| npm: bats       | 1.4.1        |
| ruby            | 2.7.4-r0     |
| gem: awspec     | 1.24.4       |
| gem: inspec     | 4.41.2       |
| gem: json       | 2.5.1        |


FROM twdps/circleci-base-image:slim-3.1.0  

| package         | version                   |
|-----------------|---------------------------|
| terraform       | 1.0.5                     |
| tflint          | 0.31.0                    |
| curl            | 7.74.0-1.3+b1             |
| wget            | 1.21-1+b1                 |
| gnupg           | 2.2.27-2                  |
| docker          | 20.10.7^                  |
| jq              | 1.6-2.1                   |
| python3         | 3.9.2-3                   |
| pip: awscli     | 1.20.30                   |
| pip: invoke     | 1.6                       |
| pip: requests   | 2.26.0                    |
| pip: jinja2     | 3.0.1                     |
| nodejs          | 14.17.6-deb-1nodesource1^ |
| npm: bats       | 1.4.1                     |
| ruby            | 1:2.7+2                   |
| gem: awspec     | 1.24.4                    |
| gem: inspec     | 4.41.2                    |
| gem: json       | 2.5.1                     |

## 08-26-2021 package versions in circleci-infra-aws:1.0.0

initial release  

FROM twdps/circleci-base-image:alpine-3.1.0  

| package         | version      |
|-----------------|--------------|
| terraform       | 1.0.5        |
| tflint          | 0.31.0       |
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| jq              | 1.6_rc1-r1   |
| python3         | 3.9.5-r1     |
| pip: awscli     | 1.20.30      |
| pip: invoke     | 1.6          |
| pip: requests   | 2.26.0       |
| pip: jinja2     | 3.0.1        |
| nodejs          | 14.17.5-r0   |
| npm             | 7.17.0-r0    |
| npm: bats       | 1.4.1        |
| ruby            | 2.7.4-r0     |
| gem: awspec     | 1.24.4       |
| gem: inspec     | 4.41.2       |
| gem: json       | 2.5.1        |


FROM twdps/circleci-base-image:slim-3.1.0  

| package         | version                  |
|-----------------|--------------------------|
| terraform       | 1.0.5                    |
| tflint          | 0.31.0                   |
| curl            | 7.74.0-1.3+b1            |
| wget            | 1.21-1+b1                |
| gnupg           | 2.2.27-2                 |
| jq              | 1.6-2.1                  |
| python3         | 3.9.2-3                  |
| pip: awscli     | 1.20.30                  |
| pip: invoke     | 1.6                      |
| pip: requests   | 2.26.0                   |
| pip: jinja2     | 3.0.1                    |
| nodejs          | 14.17.5-deb-1nodesource1 |
| npm: bats       | 1.4.1                    |
| ruby            | 1:2.7+2                  |
| gem: awspec     | 1.24.4                   |
| gem: inspec     | 4.41.2                   |
| gem: json       | 2.5.1                    |
