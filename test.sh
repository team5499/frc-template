#!/bin/bash
set -euxo pipefail

YEAR="2019"
TEAM_NUMBER="5499"

function cleanup {
    rm -rf "frc-$YEAR/"
}

trap cleanup EXIT

cookiecutter --no-input . year="$YEAR" team_number="$TEAM_NUMBER"
command "frc-$YEAR/gradlew" -p "frc-$YEAR" test
