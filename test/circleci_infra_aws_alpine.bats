#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge terraform version"
  [[ "${output}" =~ "1.5" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge tflint --version"
  [[ "${output}" =~ "0.47" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge python -V"
  [[ "${output}" =~ "3.11" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge aws --version"
  [[ "${output}" =~ "1.27" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge bats -v"
  [[ "${output}" =~ "1.9" ]]
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
  [[ "${output}" =~ "5.21" ]]
}

@test "tfsec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge tfsec --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge checkov -v"
  [[ "${output}" =~ "2.3" ]]
}

@test "driftctl version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge driftctl version"
  [[ "${output}" =~ "0.39" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}
