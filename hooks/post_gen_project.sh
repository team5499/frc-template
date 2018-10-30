#!/bin/bash
set -euxo pipefail
gradle wrapper
git init
./gradlew install_hooks
git add .
git commit -m "Initial commit by cookiecutter"
