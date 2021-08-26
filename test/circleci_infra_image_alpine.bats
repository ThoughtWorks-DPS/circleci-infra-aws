#!/usr/bin/env bats

@test "curl version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge curl --version"
  [[ "${output}" =~ "7.78.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge wget --version"
  [[ "${output}" =~ "1.21.1" ]]
}

@test "gpg version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge gpg --version"
  [[ "${output}" =~ "2.2.27" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge docker version"
  [[ "${output}" =~ "20.10.7" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge snyk --version"
  [[ "${output}" =~ "1.692.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge bats -v"
  [[ "${output}" =~ "1.4.1" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge inspec --version"
  [[ "${output}" =~ "4.41.2" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge conftest --version"
  [[ "${output}" =~ "0.27.0" ]]
}
