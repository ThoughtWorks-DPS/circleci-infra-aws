#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge terraform version"
  [[ "${output}" =~ "1.3.3" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge tflint --version"
  [[ "${output}" =~ "0.41.0" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge docker version"
  [[ "${output}" =~ "20.10.20" ]]
}

@test "gpg version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge gpg --version"
  [[ "${output}" =~ "2.2.35" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge python -V"
  [[ "${output}" =~ "3.10" ]]
}

@test "evaluate installed pip packages and versions" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge pip list --format json"
  [[ "${output}" =~ "{\"name\": \"awscli\", \"version\": \"1.25.95\"}" ]]
  [[ "${output}" =~ "{\"name\": \"invoke\", \"version\": \"1.7.3\"}" ]]
  [[ "${output}" =~ "{\"name\": \"requests\", \"version\": \"2.28.1\"}" ]]
  [[ "${output}" =~ "{\"name\": \"Jinja2\", \"version\": \"3.1.2\"}" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge aws --version"
  [[ "${output}" =~ "1.25.95" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge bats -v"
  [[ "${output}" =~ "1.8.0" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge ruby -v"
  [[ "${output}" =~ "3.1.2" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge awspec -v"
  [[ "${output}" =~ "1.28.1" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge inspec -v"
  [[ "${output}" =~ "5.18.14" ]]
}

@test "datadog version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge dog --version"
  [[ "${output}" =~ "0.44.0" ]]
}
