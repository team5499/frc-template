#!/bin/bash
set -euxo pipefail

# Install aacivator files since cookiecutter doesn't like symlinks
ln -s virtualenv_run/bin/activate .activate.sh
echo 'deactivate' > .deactivate.sh

gradle wrapper

git init
git add .
git commit -m "Initial commit by cookiecutter"

# The test script will run `pre-commit run --all-files`
# so we don't need to worry about it here
./gradlew install_hooks
