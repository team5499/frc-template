#!/bin/bash
set -euxo pipefail

function cleanup {
    rm -rf example_robot/
}

trap cleanup EXIT

cookiecutter --no-input . repo_name=example_robot team_number=5499
example_robot/gradlew -p example_robot test
