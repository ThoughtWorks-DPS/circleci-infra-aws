#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge terraform version"
  [[ "${output}" =~ "1.4" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge tflint --version"
  [[ "${output}" =~ "0.45" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-infra-aws-slim-edge docker version"
  [[ "${output}" =~ "23" ]]
}

@test "jq version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge jq --version"
  [[ "${output}" =~ "1.6" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge python -V"
  [[ "${output}" =~ "3.11" ]]
}

@test "evaluate installed pip packages and versions" {
  run bash -c "docker exec circleci-infra-aws-slim-edge pip list --format json"
  [[ "${output}" =~ "{\"name\": \"awscli\", \"version\": \"1.27\"}" ]]
  [[ "${output}" =~ "{\"name\": \"invoke\", \"version\": \"1.7\"}" ]]
  [[ "${output}" =~ "{\"name\": \"requests\", \"version\": \"2.28\"}" ]]
  [[ "${output}" =~ "{\"name\": \"Jinja2\", \"version\": \"3.1\"}" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge aws --version"
  [[ "${output}" =~ "1.27" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge bats -v"
  [[ "${output}" =~ "1.9" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge ruby -v"
  [[ "${output}" =~ "3.1" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge awspec -v"
  [[ "${output}" =~ "1.29.2" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge inspec -v"
  [[ "${output}" =~ "5.21" ]]
}

@test "tfsec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge tfsec --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge checkov -v"
  [[ "${output}" =~ "2.3" ]]
}

@test "driftctl version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge driftctl version"
  [[ "${output}" =~ "0.38" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}