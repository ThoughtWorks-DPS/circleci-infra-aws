#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge terraform version"
  [[ "${output}" =~ "1.3.6" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge tflint --version"
  [[ "${output}" =~ "0.43.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-infra-aws-slim-edge docker version"
  [[ "${output}" =~ "20.10.21" ]]
}

@test "jq version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge jq --version"
  [[ "${output}" =~ "1.6" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge python -V"
  [[ "${output}" =~ "3.10" ]]
}

@test "evaluate installed pip packages and versions" {
  run bash -c "docker exec circleci-infra-aws-slim-edge pip list --format json"
  [[ "${output}" =~ "{\"name\": \"awscli\", \"version\": \"1.27.25\"}" ]]
  [[ "${output}" =~ "{\"name\": \"invoke\", \"version\": \"1.7.3\"}" ]]
  [[ "${output}" =~ "{\"name\": \"requests\", \"version\": \"2.28.1\"}" ]]
  [[ "${output}" =~ "{\"name\": \"Jinja2\", \"version\": \"3.1.2\"}" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge aws --version"
  [[ "${output}" =~ "1.27.25" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge bats -v"
  [[ "${output}" =~ "1.8.2" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge ruby -v"
  [[ "${output}" =~ "3.1" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge awspec -v"
  [[ "${output}" =~ "1.28.2" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge inspec -v"
  [[ "${output}" =~ "5.18.14" ]]
}

@test "datadog version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge dog --version"
  [[ "${output}" =~ "0.44.0" ]]
}
