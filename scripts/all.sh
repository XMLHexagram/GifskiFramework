#!/bin/bash
set -e

cd "$( dirname "$0" )" || exit 1

# ./prepare.sh
./clean.sh
./build.sh 