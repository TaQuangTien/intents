#!/usr/bin/env bash
set -eo pipefail

# Directory of *this* script
this_dir="$( cd "$( dirname "$0" )" && pwd )"

# Base directory of repo
base_dir="$(realpath "${this_dir}/..")"

# Path to virtual environment
: "${venv:=${base_dir}/venv}"

if [ -d "${venv}" ]; then
    # Activate virtual environment if available
    source "${venv}/bin/activate"
fi

pytest -vv "${base_dir}/tests"
