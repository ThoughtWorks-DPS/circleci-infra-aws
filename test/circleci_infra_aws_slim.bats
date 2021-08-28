#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge terraform version"
  [[ "${output}" =~ "1.0.5" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge tflint --version"
  [[ "${output}" =~ "0.31.0" ]]
}

@test "curl version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge curl --version"
  [[ "${output}" =~ "7.74.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "gpg version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge gpg --version"
  [[ "${output}" =~ "2.2.27" ]]
}

@test "jq version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge jq --version"
  [[ "${output}" =~ "1.6" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge python -V"
  [[ "${output}" =~ "3.9.2" ]]
}

@test "evaluate installed pip packages and versions" {
  run bash -c "docker exec circleci-infra-aws-slim-edge pip list --format json"
  [[ "${output}" =~ "{\"name\": \"awscli\", \"version\": \"1.20.30\"}" ]]
  [[ "${output}" =~ "{\"name\": \"invoke\", \"version\": \"1.6.0\"}" ]]
  [[ "${output}" =~ "{\"name\": \"requests\", \"version\": \"2.26.0\"}" ]]
  [[ "${output}" =~ "{\"name\": \"Jinja2\", \"version\": \"3.0.1\"}" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge aws --version"
  [[ "${output}" =~ "1.20.30" ]]
}

@test "npm version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge npm -v"
  [[ "${output}" =~ "6.14.14" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge bats -v"
  [[ "${output}" =~ "1.4.1" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge ruby -v"
  [[ "${output}" =~ "2.7.4" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge awspec -v"
  [[ "${output}" =~ "1.24.4" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-aws-slim-edge inspec -v"
  [[ "${output}" =~ "4.41.2" ]]
}
