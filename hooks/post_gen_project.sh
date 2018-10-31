#!/bin/bash
set -euxo pipefail

gradle wrapper

git init
git add .
git commit -m "Initial commit by cookiecutter"

# The test script will run `pre-commit run --all-files`
# so we don't need to worry about it here
./gradlew install_hooks
