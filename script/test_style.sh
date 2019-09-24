#!/usr/bin/env bash

# set flag for shell execution
# -e  Exit immediately if a command exits with a non-zero status.
# -x  Print commands and their arguments as they are executed.
set -ex

# re-generate all stub files
script/dev_stubgen.sh
# sort import statements
script/dev_isort.sh
# run style tests against flake8
script/test_flake8.sh
# run style tests against pylint
script/test_pylint.sh
# run static type checks
script/test_mypy.sh