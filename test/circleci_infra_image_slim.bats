#!/usr/bin/env bats

@test "curl version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge curl --version"
  [[ "${output}" =~ "7.74.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "gpg version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gpg --version"
  [[ "${output}" =~ "2.2.27" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-slim-edge docker version"
  [[ "${output}" =~ "20.10.8" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge snyk --version"
  [[ "${output}" =~ "1.692.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge bats -v"
  [[ "${output}" =~ "1.4.1" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge inspec --version"
  [[ "${output}" =~ "4.41.2" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge conftest --version"
  [[ "${output}" =~ "0.27.0" ]]
}
