#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge terraform version"
  [[ "${output}" =~ "1.6" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge tflint --version"
  [[ "${output}" =~ "0.48" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge python -V"
  [[ "${output}" =~ "3.11" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge aws --version"
  [[ "${output}" =~ "1.29" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge bats -v"
  [[ "${output}" =~ "1.10" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge ruby -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge awspec -v"
  [[ "${output}" =~ "1.29" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge inspec -v"
  [[ "${output}" =~ "5.22" ]]
}

@test "tfsec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge tfsec --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge checkov -v"
  [[ "${output}" =~ "2.5" ]]
}

@test "driftctl version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge driftctl version"
  [[ "${output}" =~ "0.39" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge snyk version"
  [[ "${output}" =~ "1.1233" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge circlepipe version"
  [[ "${output}" =~ "0.2" ]]
}

@test "shasum version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge shasum --version"
  [[ "${output}" =~ "6." ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge cosign version"
  [[ "${output}" =~ "2.2" ]]
}
