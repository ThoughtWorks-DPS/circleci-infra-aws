#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge terraform version"
  [[ "${output}" =~ "1.0.11" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge tflint --version"
  [[ "${output}" =~ "0.33.1" ]]
}

@test "curl version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge curl --version"
  [[ "${output}" =~ "7.80.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge wget --version"
  [[ "${output}" =~ "1.21.2" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge docker version"
  [[ "${output}" =~ "20.10.11" ]]
}

@test "gpg version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge gpg --version"
  [[ "${output}" =~ "2.2.31" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge python -V"
  [[ "${output}" =~ "3.9.7" ]]
}

@test "evaluate installed pip packages and versions" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge pip list --format json"
  [[ "${output}" =~ "{\"name\": \"awscli\", \"version\": \"1.22.21\"}" ]]
  [[ "${output}" =~ "{\"name\": \"invoke\", \"version\": \"1.6.0\"}" ]]
  [[ "${output}" =~ "{\"name\": \"requests\", \"version\": \"2.26.0\"}" ]]
  [[ "${output}" =~ "{\"name\": \"Jinja2\", \"version\": \"3.0.3\"}" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge aws --version"
  [[ "${output}" =~ "1.22.21 " ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge bats -v"
  [[ "${output}" =~ "1.5.0" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge ruby -v"
  [[ "${output}" =~ "3.0.3" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge awspec -v"
  [[ "${output}" =~ "1.25.1" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge inspec -v"
  [[ "${output}" =~ "4.50.3" ]]
}
