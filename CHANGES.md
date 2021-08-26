## 08-26-2021 package versions in circleci-executor-builder:1.1.0

^changes  

FROM twdps/circleci-base-image:alpine-3.1.0^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.7-r1   |
| snyk            | 1.692.0^     |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.2       |
| nodejs          | 14.17.5-r0   |
| npm             | 7.17.0-r0    |
| ruby            | 2.7.4-r0     |

FROM twdps/circleci-base-image:slim-3.1.0^  

| package         | version      |
|-----------------|--------------|
| curl            | 7.78.0-r0    |
| wget            | 1.21.1-r1    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.7-r1   |
| snyk            | 1.692.0^     |
| bats            | 1.4.1        |
| conftest        | 0.27.0       |
| inspec          | 4.41.2       |
