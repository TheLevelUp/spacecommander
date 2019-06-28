#!/bin/bash

# _often_ effective, quick & dirty way of getting _this_ dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# every dirname goes one dir up (..)
REPO_PATH=`dirname $(dirname $DIR)`
SWIFTLINT="$REPO_PATH/Pods/SwiftLint/swiftlint"

$SWIFTLINT autocorrect --path $REPO_PATH --config .swiftlint.yml
$SWIFTLINT autocorrect --path $REPO_PATH --config .swiftlint-unit-tests.yml
