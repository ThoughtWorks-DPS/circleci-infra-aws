#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge terraform version"
  [[ "${output}" =~ "1.1.7" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge tflint --version"
  [[ "${output}" =~ "0.35.0" ]]
}

@test "curl version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge curl --version"
  [[ "${output}" =~ "7.82.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge wget --version"
  [[ "${output}" =~ "1.21.3" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge docker version"
  [[ "${output}" =~ "20.10.14" ]]
}

@test "gpg version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge gpg --version"
  [[ "${output}" =~ "2.2.34" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge python -V"
  [[ "${output}" =~ "3.10.0" ]]
}

@test "evaluate installed pip packages and versions" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge pip list --format json"
  [[ "${output}" =~ "{\"name\": \"awscli\", \"version\": \"1.22.87\"}" ]]
  [[ "${output}" =~ "{\"name\": \"invoke\", \"version\": \"1.7.0\"}" ]]
  [[ "${output}" =~ "{\"name\": \"requests\", \"version\": \"2.27.1\"}" ]]
  [[ "${output}" =~ "{\"name\": \"Jinja2\", \"version\": \"3.1.1\"}" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge aws --version"
  [[ "${output}" =~ "1.22.87 " ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge bats -v"
  [[ "${output}" =~ "1.6.0" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge ruby -v"
  [[ "${output}" =~ "3.0.3" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge awspec -v"
  [[ "${output}" =~ "1.25.2" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge inspec -v"
  [[ "${output}" =~ "5.10.5" ]]
}
