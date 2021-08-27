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
