#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge terraform version"
  [[ "${output}" =~ "1.7" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge tflint --version"
  [[ "${output}" =~ "0.50" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge python -V"
  [[ "${output}" =~ "3.11" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge aws --version"
  [[ "${output}" =~ "1.32" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge bats -v"
  [[ "${output}" =~ "1.10" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge ruby -v"
  [[ "${output}" =~ "3.1" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge awspec -v"
  [[ "${output}" =~ "1.29" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge inspec -v"
  [[ "${output}" =~ "5.22" ]]
}

@test "tfsec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge tfsec --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "trivy version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge trivy --version"
  [[ "${output}" =~ "0.49" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "driftctl version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge driftctl version"
  [[ "${output}" =~ "0.40" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge snyk version"
  [[ "${output}" =~ "1.1284" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge circlepipe version"
  [[ "${output}" =~ "0.3" ]]
}

@test "shasum version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge shasum --version"
  [[ "${output}" =~ "6." ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge cosign version"
  [[ "${output}" =~ "2.2" ]]
}
