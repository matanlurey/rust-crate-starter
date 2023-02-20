#!/bin/bash
#
# This script checks the coverage of the unit tests.
#
# To use this script, you need to install the following:
# ```
# rustup component add llvm-tools-preview
# brew install grcov
# ```
#
# Usage: check_coverage.sh

set -e

# Check if llvm-tools-preview is installed.
if ! rustup component list | grep llvm-tools >/dev/null; then
  echo "Error: llvm-tools-preview is not installed. Run 'rustup component add llvm-tools-preview' to install it."
  exit 1
fi

# Check if grcov is installed.
if ! which grcov >/dev/null; then
  echo "Error: grcov is not installed. Run 'brew install grcov' to install it."
  exit 1
fi

# Run tests.
CARGO_INCREMENTAL=0 RUSTFLAGS='-Cinstrument-coverage' LLVM_PROFILE_FILE='target/coverage/cargo-test-%p-%m.profraw' cargo test --tests

# Generate coverage report.
grcov target/coverage --binary-path ./target/debug/deps/ -s . -t html --branch --ignore-not-existing --ignore '../*' --ignore "/*" -o target/coverage/html

# Open coverage report.
open target/coverage/html/index.html
